
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlist {struct varobj* var; struct vlist* next; } ;
struct varobj {int obj_name; } ;


 unsigned int VAROBJ_TABLE_SIZE ;
 int error (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 struct vlist** varobj_table ;

struct varobj *
varobj_get_handle (char *objname)
{
  struct vlist *cv;
  const char *chp;
  unsigned int index = 0;
  unsigned int i = 1;

  for (chp = objname; *chp; chp++)
    {
      index = (index + (i++ * (unsigned int) *chp)) % VAROBJ_TABLE_SIZE;
    }

  cv = *(varobj_table + index);
  while ((cv != ((void*)0)) && (strcmp (cv->var->obj_name, objname) != 0))
    cv = cv->next;

  if (cv == ((void*)0))
    error ("Variable object not found");

  return cv->var;
}
