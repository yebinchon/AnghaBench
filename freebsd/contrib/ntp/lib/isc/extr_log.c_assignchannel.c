
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_13__ {scalar_t__ id; } ;
typedef TYPE_1__ isc_logmodule_t ;
struct TYPE_14__ {scalar_t__ highest_level; int dynamic; int * channellists; TYPE_5__* lctx; } ;
typedef TYPE_2__ isc_logconfig_t ;
struct TYPE_15__ {TYPE_1__ const* module; TYPE_4__* channel; } ;
typedef TYPE_3__ isc_logchannellist_t ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ level; } ;
typedef TYPE_4__ isc_logchannel_t ;
struct TYPE_17__ {unsigned int category_count; scalar_t__ module_count; int mctx; } ;
typedef TYPE_5__ isc_log_t ;


 int ISC_LIST_INITANDPREPEND (int ,TYPE_3__*,int ) ;
 scalar_t__ ISC_LOG_DYNAMIC ;
 scalar_t__ ISC_LOG_TONULL ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int ISC_TRUE ;
 int REQUIRE (int) ;
 int VALID_CONFIG (TYPE_2__*) ;
 TYPE_3__* isc_mem_get (int ,int) ;
 int link ;
 scalar_t__ sync_channellist (TYPE_2__*) ;

__attribute__((used)) static isc_result_t
assignchannel(isc_logconfig_t *lcfg, unsigned int category_id,
       const isc_logmodule_t *module, isc_logchannel_t *channel)
{
 isc_logchannellist_t *new_item;
 isc_log_t *lctx;
 isc_result_t result;

 REQUIRE(VALID_CONFIG(lcfg));

 lctx = lcfg->lctx;

 REQUIRE(category_id < lctx->category_count);
 REQUIRE(module == ((void*)0) || module->id < lctx->module_count);
 REQUIRE(channel != ((void*)0));




 result = sync_channellist(lcfg);
 if (result != ISC_R_SUCCESS)
  return (result);

 new_item = isc_mem_get(lctx->mctx, sizeof(*new_item));
 if (new_item == ((void*)0))
  return (ISC_R_NOMEMORY);

 new_item->channel = channel;
 new_item->module = module;
 ISC_LIST_INITANDPREPEND(lcfg->channellists[category_id],
          new_item, link);






 if (channel->type != ISC_LOG_TONULL) {
  if (lcfg->highest_level < channel->level)
   lcfg->highest_level = channel->level;
  if (channel->level == ISC_LOG_DYNAMIC)
   lcfg->dynamic = ISC_TRUE;
 }

 return (ISC_R_SUCCESS);
}
