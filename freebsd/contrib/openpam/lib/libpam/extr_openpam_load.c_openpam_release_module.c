
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* path; int * dlh; } ;
typedef TYPE_1__ pam_module_t ;


 int FREE (TYPE_1__*) ;
 int PAM_LOG_DEBUG ;
 int dlclose (int *) ;
 int openpam_log (int ,char*,TYPE_1__*) ;

__attribute__((used)) static void
openpam_release_module(pam_module_t *module)
{

 if (module == ((void*)0))
  return;
 if (module->dlh == ((void*)0))

  return;
 dlclose(module->dlh);
 openpam_log(PAM_LOG_DEBUG, "releasing %s", module->path);
 FREE(module->path);
 FREE(module);
}
