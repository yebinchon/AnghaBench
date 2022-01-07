
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlist {struct varobj* var; struct vlist* next; } ;
struct varobj {char* obj_name; TYPE_1__* root; } ;
struct TYPE_2__ {struct TYPE_2__* next; struct varobj* rootvar; } ;


 unsigned int VAROBJ_TABLE_SIZE ;
 int error (char*) ;
 int rootcount ;
 TYPE_1__* rootlist ;
 scalar_t__ strcmp (char*,char*) ;
 struct vlist** varobj_table ;
 struct vlist* xmalloc (int) ;

__attribute__((used)) static int
install_variable (struct varobj *var)
{
  struct vlist *cv;
  struct vlist *newvl;
  const char *chp;
  unsigned int index = 0;
  unsigned int i = 1;

  for (chp = var->obj_name; *chp; chp++)
    {
      index = (index + (i++ * (unsigned int) *chp)) % VAROBJ_TABLE_SIZE;
    }

  cv = *(varobj_table + index);
  while ((cv != ((void*)0)) && (strcmp (cv->var->obj_name, var->obj_name) != 0))
    cv = cv->next;

  if (cv != ((void*)0))
    error ("Duplicate variable object name");


  newvl = xmalloc (sizeof (struct vlist));
  newvl->next = *(varobj_table + index);
  newvl->var = var;
  *(varobj_table + index) = newvl;


  if (var->root->rootvar == var)
    {

      if (rootlist == ((void*)0))
 var->root->next = ((void*)0);
      else
 var->root->next = rootlist;
      rootlist = var->root;
      rootcount++;
    }

  return 1;
}
