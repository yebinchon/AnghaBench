
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {struct varobj* obj_name; struct varobj* name; struct varobj* root; int exp; struct varobj* rootvar; } ;


 int free_current_contents (char**) ;
 int xfree (struct varobj*) ;

__attribute__((used)) static void
free_variable (struct varobj *var)
{

  if (var->root->rootvar == var)
    {
      free_current_contents ((char **) &var->root->exp);
      xfree (var->root);
    }

  xfree (var->name);
  xfree (var->obj_name);
  xfree (var);
}
