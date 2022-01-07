
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct varobj {TYPE_2__* root; int obj_name; int name; } ;
struct value {int dummy; } ;
struct TYPE_4__ {TYPE_1__* lang; scalar_t__ use_selected_frame; struct varobj* rootvar; } ;
struct TYPE_3__ {struct value* (* value_of_root ) (struct varobj**) ;} ;
typedef int CORE_ADDR ;


 int USE_SELECTED_FRAME ;
 int install_variable (struct varobj*) ;
 int savestring (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (int ) ;
 struct value* stub1 (struct varobj**) ;
 struct varobj* varobj_create (int *,int ,int ,int ) ;
 int varobj_delete (struct varobj*,int *,int ) ;
 int varobj_gen_name () ;
 char* varobj_get_type (struct varobj*) ;

__attribute__((used)) static struct value *
value_of_root (struct varobj **var_handle, int *type_changed)
{
  struct varobj *var;

  if (var_handle == ((void*)0))
    return ((void*)0);

  var = *var_handle;




  if (var->root->rootvar != var)
    return ((void*)0);

  if (var->root->use_selected_frame)
    {
      struct varobj *tmp_var;
      char *old_type, *new_type;
      old_type = varobj_get_type (var);
      tmp_var = varobj_create (((void*)0), var->name, (CORE_ADDR) 0,
          USE_SELECTED_FRAME);
      if (tmp_var == ((void*)0))
 {
   return ((void*)0);
 }
      new_type = varobj_get_type (tmp_var);
      if (strcmp (old_type, new_type) == 0)
 {
   varobj_delete (tmp_var, ((void*)0), 0);
   *type_changed = 0;
 }
      else
 {
   if (*type_changed)
     {
       tmp_var->obj_name =
  savestring (var->obj_name, strlen (var->obj_name));
       varobj_delete (var, ((void*)0), 0);
     }
   else
     {
       tmp_var->obj_name = varobj_gen_name ();
     }
   install_variable (tmp_var);
   *var_handle = tmp_var;
   var = *var_handle;
   *type_changed = 1;
 }
    }
  else
    {
      *type_changed = 0;
    }

  return (*var->root->lang->value_of_root) (var_handle);
}
