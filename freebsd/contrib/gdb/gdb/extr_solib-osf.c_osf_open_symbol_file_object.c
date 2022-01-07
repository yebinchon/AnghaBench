
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct so_list {int so_name; TYPE_1__* lm_info; } ;
struct read_map_ctxt {int dummy; } ;
struct TYPE_2__ {int isloader; } ;


 int close_map (struct read_map_ctxt*) ;
 int open_map (struct read_map_ctxt*) ;
 int osf_free_so (struct so_list*) ;
 int query (char*) ;
 int read_map (struct read_map_ctxt*,struct so_list*) ;
 int symbol_file_add_main (int ,int) ;
 scalar_t__ symfile_objfile ;

__attribute__((used)) static int
osf_open_symbol_file_object (void *from_ttyp)
{
  struct read_map_ctxt ctxt;
  struct so_list so;
  int found;

  if (symfile_objfile)
    if (!query ("Attempt to reload symbols from process? "))
      return 0;


  if (!open_map (&ctxt))
    return 0;
  for (found = 0; !found;)
    {
      if (!read_map (&ctxt, &so))
 break;
      found = !so.lm_info->isloader;
      osf_free_so (&so);
    }
  close_map (&ctxt);

  if (found)
    symbol_file_add_main (so.so_name, *(int *) from_ttyp);
  return found;
}
