
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,char*) ;
 int mi_version (int ) ;
 int uiout ;
 struct varobj* varobj_get_handle (char*) ;
 int varobj_list (struct varobj***) ;
 int varobj_update_one (struct varobj*) ;
 int xfree (struct varobj**) ;

enum mi_cmd_result
mi_cmd_var_update (char *command, char **argv, int argc)
{
  struct varobj *var;
  struct varobj **rootlist;
  struct varobj **cr;
  struct cleanup *cleanup;
  char *name;
  int nv;

  if (argc != 1)
    error ("mi_cmd_var_update: Usage: NAME.");

  name = argv[0];




  if ((*name == '*') && (*(name + 1) == '\0'))
    {
      nv = varobj_list (&rootlist);
      if (mi_version (uiout) <= 1)
        cleanup = make_cleanup_ui_out_tuple_begin_end (uiout, "changelist");
      else
        cleanup = make_cleanup_ui_out_list_begin_end (uiout, "changelist");
      if (nv <= 0)
 {
   do_cleanups (cleanup);
   return MI_CMD_DONE;
 }
      cr = rootlist;
      while (*cr != ((void*)0))
 {
   varobj_update_one (*cr);
   cr++;
 }
      xfree (rootlist);
      do_cleanups (cleanup);
    }
  else
    {

      var = varobj_get_handle (name);
      if (var == ((void*)0))
 error ("mi_cmd_var_update: Variable object not found");

      if (mi_version (uiout) <= 1)
        cleanup = make_cleanup_ui_out_tuple_begin_end (uiout, "changelist");
      else
        cleanup = make_cleanup_ui_out_list_begin_end (uiout, "changelist");
      varobj_update_one (var);
      do_cleanups (cleanup);
    }
    return MI_CMD_DONE;
}
