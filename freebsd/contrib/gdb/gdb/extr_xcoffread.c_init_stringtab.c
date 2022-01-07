
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {scalar_t__ sym_private; int objfile_obstack; } ;
struct coff_symfile_info {char* strtbl; } ;
typedef int file_ptr ;
typedef int bfd ;


 int SEEK_SET ;
 int bfd_bread (char*,int,int *) ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_get_filename (int *) ;
 long bfd_h_get_32 (int *,unsigned char*) ;
 scalar_t__ bfd_seek (int *,int ,int ) ;
 int error (char*,...) ;
 int memcpy (char*,unsigned char*,int) ;
 scalar_t__ obstack_alloc (int *,long) ;

__attribute__((used)) static void
init_stringtab (bfd *abfd, file_ptr offset, struct objfile *objfile)
{
  long length;
  int val;
  unsigned char lengthbuf[4];
  char *strtbl;

  ((struct coff_symfile_info *) objfile->sym_private)->strtbl = ((void*)0);

  if (bfd_seek (abfd, offset, SEEK_SET) < 0)
    error ("cannot seek to string table in %s: %s",
    bfd_get_filename (abfd), bfd_errmsg (bfd_get_error ()));

  val = bfd_bread ((char *) lengthbuf, sizeof lengthbuf, abfd);
  length = bfd_h_get_32 (abfd, lengthbuf);




  if (val != sizeof lengthbuf || length < sizeof lengthbuf)
    return;




  strtbl = (char *) obstack_alloc (&objfile->objfile_obstack, length);
  ((struct coff_symfile_info *) objfile->sym_private)->strtbl = strtbl;



  memcpy (strtbl, lengthbuf, sizeof lengthbuf);
  if (length == sizeof lengthbuf)
    return;

  val = bfd_bread (strtbl + sizeof lengthbuf, length - sizeof lengthbuf, abfd);

  if (val != length - sizeof lengthbuf)
    error ("cannot read string table from %s: %s",
    bfd_get_filename (abfd), bfd_errmsg (bfd_get_error ()));
  if (strtbl[length - 1] != '\0')
    error ("bad symbol file: string table does not end with null character");

  return;
}
