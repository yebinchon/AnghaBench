
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlist {char* name; char* value; } ;
typedef int FILE ;


 size_t MAXLIST ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
doprintvlist(
 struct varlist *vlist,
 FILE *fp
 )
{
 size_t n;

 if (((void*)0) == vlist->name) {
  fprintf(fp, "No variables on list\n");
  return;
 }
 for (n = 0; n < MAXLIST && vlist[n].name != ((void*)0); n++) {
  if (((void*)0) == vlist[n].value)
   fprintf(fp, "%s\n", vlist[n].name);
  else
   fprintf(fp, "%s=%s\n", vlist[n].name,
    vlist[n].value);
 }
}
