
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;
typedef int asection ;
typedef int LONGEST ;


 int O_BINARY ;
 int O_RDONLY ;
 int bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 char* bfd_errmsg (int ) ;
 int * bfd_fdopenr (char*,int ,int) ;
 int bfd_get_error () ;
 int * bfd_get_section_by_name (int *,char*) ;
 int bfd_object ;
 scalar_t__ bfd_section_size (int *,int *) ;
 int close (int) ;
 int error (char*,char*,char*) ;
 int getenv (char*) ;
 int gnutarget ;
 int make_cleanup (int (*) (char*),char*) ;
 int openp (int ,int,char*,int,int ,char**) ;
 int perror_with_name (char*) ;
 int xfree (char*) ;

__attribute__((used)) static LONGEST
som_solib_sizeof_symbol_table (char *filename)
{
  bfd *abfd;
  int desc;
  char *absolute_name;
  LONGEST st_size = (LONGEST) 0;
  asection *sect;




  desc = openp (getenv ("PATH"), 1, filename, O_RDONLY | O_BINARY, 0, &absolute_name);
  if (desc < 0)
    {
      perror_with_name (filename);
    }
  filename = absolute_name;

  abfd = bfd_fdopenr (filename, gnutarget, desc);
  if (!abfd)
    {
      close (desc);
      make_cleanup (xfree, filename);
      error ("\"%s\": can't open to read symbols: %s.", filename,
      bfd_errmsg (bfd_get_error ()));
    }

  if (!bfd_check_format (abfd, bfd_object))
    {
      bfd_close (abfd);
      make_cleanup (xfree, filename);
      error ("\"%s\": can't read symbols: %s.", filename,
      bfd_errmsg (bfd_get_error ()));
    }




  sect = bfd_get_section_by_name (abfd, "$DEBUG$");
  if (sect)
    st_size += (LONGEST) bfd_section_size (abfd, sect);


  sect = bfd_get_section_by_name (abfd, "$PINFO$");
  if (sect)
    st_size += (LONGEST) bfd_section_size (abfd, sect);

  bfd_close (abfd);
  xfree (filename);
  return st_size * (LONGEST) 10;
}
