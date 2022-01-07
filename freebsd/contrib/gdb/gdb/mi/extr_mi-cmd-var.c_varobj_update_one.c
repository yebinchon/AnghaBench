
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,int *) ;
 int mi_version (int ) ;
 int ui_out_field_int (int ,char*,int ) ;
 int ui_out_field_string (int ,char*,char*) ;
 int uiout ;
 int varobj_get_num_children (struct varobj*) ;
 char* varobj_get_objname (struct varobj*) ;
 char* varobj_get_type (struct varobj*) ;
 int varobj_update (struct varobj**,struct varobj***) ;
 int xfree (struct varobj**) ;

__attribute__((used)) static int
varobj_update_one (struct varobj *var)
{
  struct varobj **changelist;
  struct varobj **cc;
  struct cleanup *cleanup = ((void*)0);
  int nc;

  nc = varobj_update (&var, &changelist);





  if (nc == 0)
    return 1;
  else if (nc == -1)
    {
      if (mi_version (uiout) > 1)
        cleanup = make_cleanup_ui_out_tuple_begin_end (uiout, ((void*)0));
      ui_out_field_string (uiout, "name", varobj_get_objname(var));
      ui_out_field_string (uiout, "in_scope", "false");
      if (mi_version (uiout) > 1)
        do_cleanups (cleanup);
      return -1;
    }
  else if (nc == -2)
    {
      if (mi_version (uiout) > 1)
        cleanup = make_cleanup_ui_out_tuple_begin_end (uiout, ((void*)0));
      ui_out_field_string (uiout, "name", varobj_get_objname (var));
      ui_out_field_string (uiout, "in_scope", "true");
      ui_out_field_string (uiout, "new_type", varobj_get_type(var));
      ui_out_field_int (uiout, "new_num_children",
      varobj_get_num_children(var));
      if (mi_version (uiout) > 1)
        do_cleanups (cleanup);
    }
  else
    {

      cc = changelist;
      while (*cc != ((void*)0))
 {
   if (mi_version (uiout) > 1)
     cleanup = make_cleanup_ui_out_tuple_begin_end (uiout, ((void*)0));
   ui_out_field_string (uiout, "name", varobj_get_objname (*cc));
   ui_out_field_string (uiout, "in_scope", "true");
   ui_out_field_string (uiout, "type_changed", "false");
   if (mi_version (uiout) > 1)
     do_cleanups (cleanup);
   cc++;
 }
      xfree (changelist);
      return 1;
    }
  return 1;
}
