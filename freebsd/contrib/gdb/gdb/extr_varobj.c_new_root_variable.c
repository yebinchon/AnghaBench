
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj_root {int * rootvar; scalar_t__ use_selected_frame; int frame; int * valid_block; int * exp; int * lang; } ;
struct varobj {struct varobj_root* root; } ;


 struct varobj* new_variable () ;
 int null_frame_id ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct varobj *
new_root_variable (void)
{
  struct varobj *var = new_variable ();
  var->root = (struct varobj_root *) xmalloc (sizeof (struct varobj_root));;
  var->root->lang = ((void*)0);
  var->root->exp = ((void*)0);
  var->root->valid_block = ((void*)0);
  var->root->frame = null_frame_id;
  var->root->use_selected_frame = 0;
  var->root->rootvar = ((void*)0);

  return var;
}
