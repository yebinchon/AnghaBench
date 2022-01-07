
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int type; } ;
struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;


 scalar_t__ CPLUS_FAKE_CHILD (struct varobj*) ;
 int VALUE_TYPE (struct value*) ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_ui_file_delete (struct ui_file*) ;
 struct ui_file* mem_fileopen () ;
 int not_lval ;
 int type_print (int ,char*,struct ui_file*,int) ;
 char* ui_file_xstrdup (struct ui_file*,long*) ;
 struct value* value_zero (int ,int ) ;

char *
varobj_get_type (struct varobj *var)
{
  struct value *val;
  struct cleanup *old_chain;
  struct ui_file *stb;
  char *thetype;
  long length;



  if (CPLUS_FAKE_CHILD (var))
    return ((void*)0);

  stb = mem_fileopen ();
  old_chain = make_cleanup_ui_file_delete (stb);



  val = value_zero (var->type, not_lval);
  type_print (VALUE_TYPE (val), "", stb, -1);

  thetype = ui_file_xstrdup (stb, &length);
  do_cleanups (old_chain);
  return thetype;
}
