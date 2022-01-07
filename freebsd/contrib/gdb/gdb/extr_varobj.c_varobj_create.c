
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct varobj {void* obj_name; TYPE_2__* root; int value; int type; void* name; int format; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
struct block {int dummy; } ;
typedef enum varobj_type { ____Placeholder_varobj_type } varobj_type ;
typedef enum varobj_languages { ____Placeholder_varobj_languages } varobj_languages ;
struct TYPE_8__ {TYPE_1__* elts; } ;
struct TYPE_7__ {int use_selected_frame; struct varobj* rootvar; int lang; TYPE_3__* exp; int frame; int * valid_block; } ;
struct TYPE_6__ {scalar_t__ opcode; } ;
typedef int CORE_ADDR ;


 scalar_t__ OP_TYPE ;
 int USE_CURRENT_FRAME ;
 int USE_SELECTED_FRAME ;
 scalar_t__ VALUE_LAZY (int ) ;
 int VALUE_TYPE (int ) ;
 struct frame_info* deprecated_selected_frame ;
 int discard_cleanups (struct cleanup*) ;
 int do_cleanups (struct cleanup*) ;
 int evaluate_type (TYPE_3__*) ;
 struct frame_info* find_frame_addr_in_frame_chain (int ) ;
 int fprintf_unfiltered (int ,char*) ;
 scalar_t__ gdb_evaluate_expression (TYPE_3__*,int *) ;
 int gdb_parse_exp_1 (char**,struct block*,int ,TYPE_3__**) ;
 int gdb_stderr ;
 int gdb_value_fetch_lazy (int ) ;
 struct block* get_frame_block (struct frame_info*,int ) ;
 int get_frame_id (struct frame_info*) ;
 int * innermost_block ;
 int install_variable (struct varobj*) ;
 int * languages ;
 struct cleanup* make_cleanup_free_variable (struct varobj*) ;
 struct varobj* new_root_variable () ;
 int release_value (int ) ;
 void* savestring (char*,int ) ;
 int select_frame (struct frame_info*) ;
 int strlen (char*) ;
 int variable_default_display (struct varobj*) ;
 int variable_language (struct varobj*) ;

struct varobj *
varobj_create (char *objname,
        char *expression, CORE_ADDR frame, enum varobj_type type)
{
  struct varobj *var;
  struct frame_info *fi;
  struct frame_info *old_fi = ((void*)0);
  struct block *block;
  struct cleanup *old_chain;


  var = new_root_variable ();
  old_chain = make_cleanup_free_variable (var);

  if (expression != ((void*)0))
    {
      char *p;
      enum varobj_languages lang;





      if ((type == USE_CURRENT_FRAME) || (type == USE_SELECTED_FRAME))
 fi = deprecated_selected_frame;
      else






 fi = find_frame_addr_in_frame_chain (frame);


      if (type == USE_SELECTED_FRAME)
 var->root->use_selected_frame = 1;

      block = ((void*)0);
      if (fi != ((void*)0))
 block = get_frame_block (fi, 0);

      p = expression;
      innermost_block = ((void*)0);


      if (!gdb_parse_exp_1 (&p, block, 0, &var->root->exp))
 {
   return ((void*)0);
 }


      if (var->root->exp->elts[0].opcode == OP_TYPE)
 {
   do_cleanups (old_chain);
   fprintf_unfiltered (gdb_stderr,
         "Attempt to use a type name as an expression.");
   return ((void*)0);
 }

      var->format = variable_default_display (var);
      var->root->valid_block = innermost_block;
      var->name = savestring (expression, strlen (expression));





      if (fi != ((void*)0))
 {
   var->root->frame = get_frame_id (fi);
   old_fi = deprecated_selected_frame;
   select_frame (fi);
 }




      if (gdb_evaluate_expression (var->root->exp, &var->value))
 {

   release_value (var->value);
   if (VALUE_LAZY (var->value))
     gdb_value_fetch_lazy (var->value);
 }
      else
 var->value = evaluate_type (var->root->exp);

      var->type = VALUE_TYPE (var->value);


      lang = variable_language (var);
      var->root->lang = languages[lang];


      var->root->rootvar = var;


      if (fi != ((void*)0))
 select_frame (old_fi);
    }




  if ((var != ((void*)0)) && (objname != ((void*)0)))
    {
      var->obj_name = savestring (objname, strlen (objname));



      if (!install_variable (var))
 {
   do_cleanups (old_chain);
   return ((void*)0);
 }
    }

  discard_cleanups (old_chain);
  return var;
}
