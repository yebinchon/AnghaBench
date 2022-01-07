
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* path; int * dlh; int ** func; } ;
typedef TYPE_1__ pam_module_t ;
typedef int * pam_func_t ;


 int ENOENT ;
 int FREE (TYPE_1__*) ;
 int PAM_LOG_ERROR ;
 int PAM_LOG_LIBDEBUG ;
 int PAM_NUM_PRIMITIVES ;
 TYPE_1__* calloc (int,int) ;
 int dlclose (int *) ;
 int dlerror () ;
 scalar_t__ dlfunc (int *,int ) ;
 TYPE_1__* dlsym (int *,char*) ;
 int errno ;
 int openpam_log (int ,char*,char const*,...) ;
 int * pam_sm_func_name ;
 TYPE_1__* strdup (char const*) ;
 int * try_dlopen (char const*) ;

__attribute__((used)) static pam_module_t *
try_module(const char *modpath)
{
 const pam_module_t *dlmodule;
 pam_module_t *module;
 int i, serrno;

 if ((module = calloc(1, sizeof *module)) == ((void*)0) ||
     (module->path = strdup(modpath)) == ((void*)0) ||
     (module->dlh = try_dlopen(modpath)) == ((void*)0))
  goto err;
 dlmodule = dlsym(module->dlh, "_pam_module");
 for (i = 0; i < PAM_NUM_PRIMITIVES; ++i) {
  if (dlmodule) {
   module->func[i] = dlmodule->func[i];
  } else {
   module->func[i] = (pam_func_t)dlfunc(module->dlh,
       pam_sm_func_name[i]);
  }
 }
 return (module);
err:
 serrno = errno;
 if (module != ((void*)0)) {
  if (module->dlh != ((void*)0))
   dlclose(module->dlh);
  if (module->path != ((void*)0))
   FREE(module->path);
  FREE(module);
 }
 errno = serrno;
 if (serrno != 0 && serrno != ENOENT)
  openpam_log(PAM_LOG_ERROR, "%s: %m", modpath);
 errno = serrno;
 return (((void*)0));
}
