
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int modname ;
struct TYPE_6__ {int ndeps; scalar_t__ fbt_nentries; TYPE_1__** deps; int filename; } ;
typedef TYPE_2__ modctl_t ;
struct TYPE_5__ {int filename; } ;


 int MAXPATHLEN ;
 int fbt_provide_module_function ;
 int linker_file_function_listall (TYPE_2__*,int ,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,int ,int) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void
fbt_provide_module(void *arg, modctl_t *lf)
{
 char modname[MAXPATHLEN];
 int i;
 size_t len;

 strlcpy(modname, lf->filename, sizeof(modname));
 len = strlen(modname);
 if (len > 3 && strcmp(modname + len - 3, ".ko") == 0)
  modname[len - 3] = '\0';





 if (strcmp(modname, "dtrace") == 0)
  return;







 for (i = 0; i < lf->ndeps; i++)
  if (strncmp(lf->deps[i]->filename, "dtrace", 6) == 0)
   return;

 if (lf->fbt_nentries) {




  return;
 }




 (void) linker_file_function_listall(lf, fbt_provide_module_function, modname);
}
