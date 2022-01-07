
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ id; int * name; } ;
typedef TYPE_1__ isc_logmodule_t ;
struct TYPE_8__ {int module_count; TYPE_1__* modules; } ;
typedef TYPE_2__ isc_log_t ;


 int DE_CONST (int *,TYPE_1__*) ;
 int REQUIRE (int) ;
 scalar_t__ UINT_MAX ;
 int VALID_CONTEXT (TYPE_2__*) ;

void
isc_log_registermodules(isc_log_t *lctx, isc_logmodule_t modules[]) {
 isc_logmodule_t *modp;

 REQUIRE(VALID_CONTEXT(lctx));
 REQUIRE(modules != ((void*)0) && modules[0].name != ((void*)0));
 if (lctx->modules == ((void*)0))
  lctx->modules = modules;

 else {




  for (modp = lctx->modules; modp->name != ((void*)0); )
   if (modp->id == UINT_MAX)




    DE_CONST(modp->name, modp);
   else
    modp++;

  modp->name = (void *)modules;
  modp->id = UINT_MAX;
 }




 for (modp = modules; modp->name != ((void*)0); modp++)
  modp->id = lctx->module_count++;
}
