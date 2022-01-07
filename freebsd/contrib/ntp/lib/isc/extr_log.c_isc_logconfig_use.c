
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_9__ {TYPE_2__* lctx; } ;
typedef TYPE_1__ isc_logconfig_t ;
struct TYPE_10__ {int lock; TYPE_1__* logconfig; } ;
typedef TYPE_2__ isc_log_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int VALID_CONFIG (TYPE_1__*) ;
 int VALID_CONTEXT (TYPE_2__*) ;
 int isc_logconfig_destroy (TYPE_1__**) ;
 scalar_t__ sync_channellist (TYPE_1__*) ;

isc_result_t
isc_logconfig_use(isc_log_t *lctx, isc_logconfig_t *lcfg) {
 isc_logconfig_t *old_cfg;
 isc_result_t result;

 REQUIRE(VALID_CONTEXT(lctx));
 REQUIRE(VALID_CONFIG(lcfg));
 REQUIRE(lcfg->lctx == lctx);






 result = sync_channellist(lcfg);
 if (result != ISC_R_SUCCESS)
  return (result);

 LOCK(&lctx->lock);

 old_cfg = lctx->logconfig;
 lctx->logconfig = lcfg;

 UNLOCK(&lctx->lock);

 isc_logconfig_destroy(&old_cfg);

 return (ISC_R_SUCCESS);
}
