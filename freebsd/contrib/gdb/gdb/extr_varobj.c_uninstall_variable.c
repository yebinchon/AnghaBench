
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlist {struct vlist* next; TYPE_1__* var; } ;
struct varobj_root {struct varobj_root* next; struct varobj* rootvar; } ;
struct varobj {char* obj_name; struct varobj_root* root; } ;
struct TYPE_2__ {int obj_name; } ;


 unsigned int VAROBJ_TABLE_SIZE ;
 int fprintf_unfiltered (int ,char*,char*) ;
 int gdb_stdlog ;
 int rootcount ;
 struct varobj_root* rootlist ;
 scalar_t__ strcmp (int ,char*) ;
 struct vlist** varobj_table ;
 scalar_t__ varobjdebug ;
 int warning (char*,char*) ;
 int xfree (struct vlist*) ;

__attribute__((used)) static void
uninstall_variable (struct varobj *var)
{
  struct vlist *cv;
  struct vlist *prev;
  struct varobj_root *cr;
  struct varobj_root *prer;
  const char *chp;
  unsigned int index = 0;
  unsigned int i = 1;


  for (chp = var->obj_name; *chp; chp++)
    {
      index = (index + (i++ * (unsigned int) *chp)) % VAROBJ_TABLE_SIZE;
    }

  cv = *(varobj_table + index);
  prev = ((void*)0);
  while ((cv != ((void*)0)) && (strcmp (cv->var->obj_name, var->obj_name) != 0))
    {
      prev = cv;
      cv = cv->next;
    }

  if (varobjdebug)
    fprintf_unfiltered (gdb_stdlog, "Deleting %s\n", var->obj_name);

  if (cv == ((void*)0))
    {
      warning
 ("Assertion failed: Could not find variable object \"%s\" to delete",
  var->obj_name);
      return;
    }

  if (prev == ((void*)0))
    *(varobj_table + index) = cv->next;
  else
    prev->next = cv->next;

  xfree (cv);


  if (var->root->rootvar == var)
    {

      if (rootlist == var->root)
 rootlist = var->root->next;
      else
 {
   prer = ((void*)0);
   cr = rootlist;
   while ((cr != ((void*)0)) && (cr->rootvar != var))
     {
       prer = cr;
       cr = cr->next;
     }
   if (cr == ((void*)0))
     {
       warning
  ("Assertion failed: Could not find varobj \"%s\" in root list",
   var->obj_name);
       return;
     }
   if (prer == ((void*)0))
     rootlist = ((void*)0);
   else
     prer->next = cr->next;
 }
      rootcount--;
    }

}
