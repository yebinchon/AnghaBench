
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; int mtabsize; int mtab; int (* unregister ) (int ,int ) ;int name; } ;
typedef TYPE_1__ ns_mod ;


 int dlclose (int *) ;
 int exiting ;
 int free (int ) ;
 int * nss_builtin_handle ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
ns_mod_free(ns_mod *mod)
{

 free(mod->name);
 if (mod->handle == ((void*)0))
  return;
 if (mod->unregister != ((void*)0))
  mod->unregister(mod->mtab, mod->mtabsize);
 if (mod->handle != nss_builtin_handle && !exiting)
  (void)dlclose(mod->handle);
}
