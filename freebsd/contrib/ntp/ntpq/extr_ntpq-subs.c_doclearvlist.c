
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlist {scalar_t__ name; void* value; } ;


 int MAXLIST ;
 int free (void*) ;

__attribute__((used)) static void
doclearvlist(
 struct varlist *vlist
 )
{
 register struct varlist *vl;

 for (vl = vlist; vl < vlist + MAXLIST && vl->name != 0; vl++) {
  free((void *)(intptr_t)vl->name);
  vl->name = 0;
  if (vl->value != 0) {
   free(vl->value);
   vl->value = 0;
  }
 }
}
