
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ id; int * name; } ;
typedef TYPE_1__ isc_logmodule_t ;
struct TYPE_8__ {TYPE_1__* modules; } ;
typedef TYPE_2__ isc_log_t ;


 int DE_CONST (int *,TYPE_1__*) ;
 int REQUIRE (int ) ;
 scalar_t__ UINT_MAX ;
 int VALID_CONTEXT (TYPE_2__*) ;
 scalar_t__ strcmp (int *,char const*) ;

isc_logmodule_t *
isc_log_modulebyname(isc_log_t *lctx, const char *name) {
 isc_logmodule_t *modp;

 REQUIRE(VALID_CONTEXT(lctx));
 REQUIRE(name != ((void*)0));

 for (modp = lctx->modules; modp->name != ((void*)0); )
  if (modp->id == UINT_MAX)




   DE_CONST(modp->name, modp);
  else {
   if (strcmp(modp->name, name) == 0)
    return (modp);
   modp++;
  }

 return (((void*)0));
}
