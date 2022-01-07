
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct so_list {struct section_table* textsection; struct section_table* sections_end; struct section_table* sections; int so_name; int * abfd; } ;
struct section_table {TYPE_1__* the_bfd_section; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;
struct TYPE_2__ {int name; } ;


 scalar_t__ SO_NAME_MAX_PATH_SIZE ;
 int TARGET_SO_RELOCATE_SECTION_ADDRESSES (struct so_list*,struct section_table*) ;
 int bfd_check_format (int *,int ) ;
 char* bfd_errmsg (int ) ;
 int * bfd_fdopenr (char*,int ,int) ;
 int bfd_get_error () ;
 char* bfd_get_filename (int *) ;
 int bfd_object ;
 int bfd_set_cacheable (int *,int) ;
 scalar_t__ build_section_table (int *,struct section_table**,struct section_table**) ;
 int close (int) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,...) ;
 int gnutarget ;
 struct cleanup* make_cleanup (int ,char*) ;
 int perror_with_name (char*) ;
 int solib_open (char*,char**) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;
 char* tilde_expand (int ) ;
 int xfree ;

__attribute__((used)) static int
solib_map_sections (void *arg)
{
  struct so_list *so = (struct so_list *) arg;
  char *filename;
  char *scratch_pathname;
  int scratch_chan;
  struct section_table *p;
  struct cleanup *old_chain;
  bfd *abfd;

  filename = tilde_expand (so->so_name);

  old_chain = make_cleanup (xfree, filename);
  scratch_chan = solib_open (filename, &scratch_pathname);

  if (scratch_chan < 0)
    {
      perror_with_name (filename);
    }


  abfd = bfd_fdopenr (scratch_pathname, gnutarget, scratch_chan);
  if (!abfd)
    {
      close (scratch_chan);
      error ("Could not open `%s' as an executable file: %s",
      scratch_pathname, bfd_errmsg (bfd_get_error ()));
    }


  so->abfd = abfd;
  bfd_set_cacheable (abfd, 1);



  if (strlen (scratch_pathname) >= SO_NAME_MAX_PATH_SIZE)
    error ("Full path name length of shared library exceeds SO_NAME_MAX_PATH_SIZE in so_list structure.");
  strcpy (so->so_name, scratch_pathname);

  if (!bfd_check_format (abfd, bfd_object))
    {
      error ("\"%s\": not in executable format: %s.",
      scratch_pathname, bfd_errmsg (bfd_get_error ()));
    }
  if (build_section_table (abfd, &so->sections, &so->sections_end))
    {
      error ("Can't find the file sections in `%s': %s",
      bfd_get_filename (abfd), bfd_errmsg (bfd_get_error ()));
    }

  for (p = so->sections; p < so->sections_end; p++)
    {



      TARGET_SO_RELOCATE_SECTION_ADDRESSES (so, p);
      if (strcmp (p->the_bfd_section->name, ".text") == 0)
 {
   so->textsection = p;
 }
    }


  do_cleanups (old_chain);

  return (1);
}
