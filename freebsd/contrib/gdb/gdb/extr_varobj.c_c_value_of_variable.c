
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {scalar_t__ format; int * value; int num_children; } ;
struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;


 int TYPE_CODE (int ) ;



 int VALUE_LAZY (int *) ;
 int common_val_print (int *,struct ui_file*,int ,int,int ,int ) ;
 int do_cleanups (struct cleanup*) ;
 int * format_code ;
 int gdb_value_fetch_lazy (int *) ;
 int get_type (struct varobj*) ;
 struct cleanup* make_cleanup_ui_file_delete (struct ui_file*) ;
 struct ui_file* mem_fileopen () ;
 char* ui_file_xstrdup (struct ui_file*,long*) ;
 int xasprintf (char**,char*,int ) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
c_value_of_variable (struct varobj *var)
{



  switch (TYPE_CODE (get_type (var)))
    {
    case 129:
    case 128:
      return xstrdup ("{...}");


    case 130:
      {
 char *number;
 xasprintf (&number, "[%d]", var->num_children);
 return (number);
      }


    default:
      {
 if (var->value == ((void*)0))
   {



     return ((void*)0);
   }
 else
   {
     long dummy;
     struct ui_file *stb = mem_fileopen ();
     struct cleanup *old_chain = make_cleanup_ui_file_delete (stb);
     char *thevalue;

     if (VALUE_LAZY (var->value))
       gdb_value_fetch_lazy (var->value);
     common_val_print (var->value, stb,
         format_code[(int) var->format], 1, 0, 0);
     thevalue = ui_file_xstrdup (stb, &dummy);
     do_cleanups (old_chain);
 return thevalue;
      }
      }
    }
}
