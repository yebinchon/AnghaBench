
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_mem_t ;
struct TYPE_8__ {char* buffer; scalar_t__ magic; int * mctx; scalar_t__ module_count; int * modules; scalar_t__ category_count; int * categories; scalar_t__ debug_level; int text; int messages; int lock; int * logconfig; } ;
typedef TYPE_1__ isc_logmessage_t ;
typedef int isc_logconfig_t ;
typedef TYPE_1__ isc_log_t ;


 int DESTROYLOCK (int *) ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 int ISC_LIST_UNLINK (int ,TYPE_1__*,int ) ;
 int REQUIRE (int) ;
 scalar_t__ VALID_CONTEXT (TYPE_1__*) ;
 int isc_logconfig_destroy (int **) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;
 int link ;
 int strlen (int ) ;

void
isc_log_destroy(isc_log_t **lctxp) {
 isc_log_t *lctx;
 isc_logconfig_t *lcfg;
 isc_mem_t *mctx;
 isc_logmessage_t *message;

 REQUIRE(lctxp != ((void*)0) && VALID_CONTEXT(*lctxp));

 lctx = *lctxp;
 mctx = lctx->mctx;

 if (lctx->logconfig != ((void*)0)) {
  lcfg = lctx->logconfig;
  lctx->logconfig = ((void*)0);
  isc_logconfig_destroy(&lcfg);
 }

 DESTROYLOCK(&lctx->lock);

 while ((message = ISC_LIST_HEAD(lctx->messages)) != ((void*)0)) {
  ISC_LIST_UNLINK(lctx->messages, message, link);

  isc_mem_put(mctx, message,
       sizeof(*message) + strlen(message->text) + 1);
 }

 lctx->buffer[0] = '\0';
 lctx->debug_level = 0;
 lctx->categories = ((void*)0);
 lctx->category_count = 0;
 lctx->modules = ((void*)0);
 lctx->module_count = 0;
 lctx->mctx = ((void*)0);
 lctx->magic = 0;

 isc_mem_put(mctx, lctx, sizeof(*lctx));

 *lctxp = ((void*)0);
}
