
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct varobj {int error; TYPE_1__* root; } ;
struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {int exp; int frame; int * valid_block; struct varobj* rootvar; } ;


 scalar_t__ VALUE_LAZY (struct value*) ;
 struct frame_info* frame_find_by_id (int ) ;
 scalar_t__ gdb_evaluate_expression (int ,struct value**) ;
 int gdb_value_fetch_lazy (struct value*) ;
 int reinit_frame_cache () ;
 int release_value (struct value*) ;
 int select_frame (struct frame_info*) ;

__attribute__((used)) static struct value *
c_value_of_root (struct varobj **var_handle)
{
  struct value *new_val;
  struct varobj *var = *var_handle;
  struct frame_info *fi;
  int within_scope;


  if (var->root->rootvar != var)

    return ((void*)0);



  if (var->root->valid_block == ((void*)0))
    within_scope = 1;
  else
    {
      reinit_frame_cache ();
      fi = frame_find_by_id (var->root->frame);
      within_scope = fi != ((void*)0);

      if (within_scope)
 select_frame (fi);
    }

  if (within_scope)
    {



      if (gdb_evaluate_expression (var->root->exp, &new_val))
 {
   if (VALUE_LAZY (new_val))
     {






       if (!gdb_value_fetch_lazy (new_val))
  var->error = 1;
       else
  var->error = 0;
     }
 }
      else
 var->error = 1;

      release_value (new_val);
      return new_val;
    }

  return ((void*)0);
}
