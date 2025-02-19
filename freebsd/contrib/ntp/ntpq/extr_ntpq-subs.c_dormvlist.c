
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlist {scalar_t__ name; void* value; } ;


 int INSIST (int) ;
 int MAXLIST ;
 struct varlist* findlistvar (struct varlist*,char*) ;
 int fprintf (int ,char*,char*) ;
 int free (void*) ;
 struct varlist* g_varlist ;
 scalar_t__ nextvar (size_t*,char const**,char**,char**) ;
 int stderr ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
dormvlist(
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
  if (vl == 0 || vl->name == 0) {
   (void) fprintf(stderr, "Variable `%s' not found\n",
           name);
  } else {
   free((void *)(intptr_t)vl->name);
   if (vl->value != 0)
       free(vl->value);
   for ( ; (vl+1) < (g_varlist + MAXLIST)
          && (vl+1)->name != 0; vl++) {
    vl->name = (vl+1)->name;
    vl->value = (vl+1)->value;
   }
   vl->name = vl->value = 0;
  }
 }
}
