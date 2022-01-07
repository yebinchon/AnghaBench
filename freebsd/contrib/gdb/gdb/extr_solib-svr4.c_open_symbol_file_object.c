
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_map_offsets {scalar_t__ l_name_offset; int l_name_size; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ SO_NAME_MAX_PATH_SIZE ;
 struct link_map_offsets* SVR4_FETCH_LINK_MAP_OFFSETS () ;
 int debug_base ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ extract_unsigned_integer (char*,int ) ;
 scalar_t__ first_link_map_member () ;
 int locate_base () ;
 struct cleanup* make_cleanup (int ,char*) ;
 int query (char*) ;
 int read_memory (scalar_t__,char*,int ) ;
 int safe_strerror (int) ;
 int symbol_file_add_main (char*,int) ;
 scalar_t__ symfile_objfile ;
 int target_read_string (scalar_t__,char**,scalar_t__,int*) ;
 int warning (char*,int ) ;
 int xfree ;
 char* xmalloc (int ) ;

__attribute__((used)) static int
open_symbol_file_object (void *from_ttyp)
{
  CORE_ADDR lm, l_name;
  char *filename;
  int errcode;
  int from_tty = *(int *)from_ttyp;
  struct link_map_offsets *lmo = SVR4_FETCH_LINK_MAP_OFFSETS ();
  char *l_name_buf = xmalloc (lmo->l_name_size);
  struct cleanup *cleanups = make_cleanup (xfree, l_name_buf);

  if (symfile_objfile)
    if (!query ("Attempt to reload symbols from process? "))
      return 0;

  if ((debug_base = locate_base ()) == 0)
    return 0;


  if ((lm = first_link_map_member ()) == 0)
    return 0;


  read_memory (lm + lmo->l_name_offset, l_name_buf, lmo->l_name_size);



  l_name = extract_unsigned_integer (l_name_buf, lmo->l_name_size);


  do_cleanups (cleanups);

  if (l_name == 0)
    return 0;


  target_read_string (l_name, &filename, SO_NAME_MAX_PATH_SIZE - 1, &errcode);

  if (errcode)
    {
      warning ("failed to read exec filename from attached file: %s",
        safe_strerror (errcode));
      return 0;
    }

  make_cleanup (xfree, filename);

  symbol_file_add_main (filename, from_tty);

  return 1;
}
