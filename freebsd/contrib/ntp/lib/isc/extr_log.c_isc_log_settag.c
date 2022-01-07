
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_6__ {int * tag; TYPE_1__* lctx; } ;
typedef TYPE_2__ isc_logconfig_t ;
struct TYPE_5__ {int mctx; } ;


 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_CONFIG (TYPE_2__*) ;
 int isc_mem_free (int ,int *) ;
 int * isc_mem_strdup (int ,char const*) ;

isc_result_t
isc_log_settag(isc_logconfig_t *lcfg, const char *tag) {
 REQUIRE(VALID_CONFIG(lcfg));

 if (tag != ((void*)0) && *tag != '\0') {
  if (lcfg->tag != ((void*)0))
   isc_mem_free(lcfg->lctx->mctx, lcfg->tag);
  lcfg->tag = isc_mem_strdup(lcfg->lctx->mctx, tag);
  if (lcfg->tag == ((void*)0))
   return (ISC_R_NOMEMORY);

 } else {
  if (lcfg->tag != ((void*)0))
   isc_mem_free(lcfg->lctx->mctx, lcfg->tag);
  lcfg->tag = ((void*)0);
 }

 return (ISC_R_SUCCESS);
}
