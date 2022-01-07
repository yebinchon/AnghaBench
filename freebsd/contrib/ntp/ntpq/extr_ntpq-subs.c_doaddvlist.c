
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlist {int * value; int * name; } ;


 int INSIST (int) ;
 void* estrdup (char*) ;
 struct varlist* findlistvar (struct varlist*,char*) ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 scalar_t__ nextvar (size_t*,char const**,char**,char**) ;
 int stderr ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
doaddvlist(
 struct varlist *vlist,
 const char *vars
 )
{
 struct varlist *vl;
 size_t len;
 char *name;
 char *value;

 len = strlen(vars);
 while (nextvar(&len, &vars, &name, &value)) {
  INSIST(name && value);
  vl = findlistvar(vlist, name);
  if (((void*)0) == vl) {
   fprintf(stderr, "Variable list full\n");
   return;
  }

  if (((void*)0) == vl->name) {
   vl->name = estrdup(name);
  } else if (vl->value != ((void*)0)) {
   free(vl->value);
   vl->value = ((void*)0);
  }

  if (value != ((void*)0))
   vl->value = estrdup(value);
 }
}
