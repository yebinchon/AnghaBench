
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_logconfig_t ;
struct TYPE_9__ {int * logconfig; int magic; int lock; int messages; scalar_t__ debug_level; scalar_t__ module_count; int * modules; scalar_t__ category_count; int * categories; int * mctx; } ;
typedef TYPE_1__ isc_log_t ;


 int ISC_LIST_INIT (int ) ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int LCTX_MAGIC ;
 int REQUIRE (int) ;
 int isc_categories ;
 int isc_log_destroy (TYPE_1__**) ;
 int isc_log_registercategories (TYPE_1__*,int ) ;
 int isc_log_registermodules (TYPE_1__*,int ) ;
 scalar_t__ isc_logconfig_create (TYPE_1__*,int **) ;
 int isc_logconfig_destroy (int **) ;
 TYPE_1__* isc_mem_get (int *,int) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;
 int isc_modules ;
 scalar_t__ isc_mutex_init (int *) ;
 scalar_t__ sync_channellist (int *) ;

isc_result_t
isc_log_create(isc_mem_t *mctx, isc_log_t **lctxp, isc_logconfig_t **lcfgp) {
 isc_log_t *lctx;
 isc_logconfig_t *lcfg = ((void*)0);
 isc_result_t result;

 REQUIRE(mctx != ((void*)0));
 REQUIRE(lctxp != ((void*)0) && *lctxp == ((void*)0));
 REQUIRE(lcfgp == ((void*)0) || *lcfgp == ((void*)0));

 lctx = isc_mem_get(mctx, sizeof(*lctx));
 if (lctx != ((void*)0)) {
  lctx->mctx = mctx;
  lctx->categories = ((void*)0);
  lctx->category_count = 0;
  lctx->modules = ((void*)0);
  lctx->module_count = 0;
  lctx->debug_level = 0;

  ISC_LIST_INIT(lctx->messages);

  result = isc_mutex_init(&lctx->lock);
  if (result != ISC_R_SUCCESS) {
   isc_mem_put(mctx, lctx, sizeof(*lctx));
   return (result);
  }
  lctx->magic = LCTX_MAGIC;

  isc_log_registercategories(lctx, isc_categories);
  isc_log_registermodules(lctx, isc_modules);
  result = isc_logconfig_create(lctx, &lcfg);

 } else
  result = ISC_R_NOMEMORY;

 if (result == ISC_R_SUCCESS)
  result = sync_channellist(lcfg);

 if (result == ISC_R_SUCCESS) {
  lctx->logconfig = lcfg;

  *lctxp = lctx;
  if (lcfgp != ((void*)0))
   *lcfgp = lcfg;

 } else {
  if (lcfg != ((void*)0))
   isc_logconfig_destroy(&lcfg);
  if (lctx != ((void*)0))
   isc_log_destroy(&lctx);
 }

 return (result);
}
