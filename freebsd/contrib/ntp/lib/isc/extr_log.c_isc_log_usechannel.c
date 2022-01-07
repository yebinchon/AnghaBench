
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_16__ {scalar_t__ id; } ;
typedef TYPE_1__ isc_logmodule_t ;
struct TYPE_17__ {int channels; TYPE_5__* lctx; } ;
typedef TYPE_2__ isc_logconfig_t ;
struct TYPE_18__ {int name; } ;
typedef TYPE_3__ isc_logchannel_t ;
struct TYPE_19__ {unsigned int id; } ;
typedef TYPE_4__ isc_logcategory_t ;
struct TYPE_20__ {unsigned int category_count; scalar_t__ module_count; } ;
typedef TYPE_5__ isc_log_t ;


 TYPE_3__* ISC_LIST_HEAD (int ) ;
 TYPE_3__* ISC_LIST_NEXT (TYPE_3__*,int ) ;
 scalar_t__ ISC_R_NOTFOUND ;
 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int VALID_CONFIG (TYPE_2__*) ;
 scalar_t__ assignchannel (TYPE_2__*,unsigned int,TYPE_1__ const*,TYPE_3__*) ;
 int link ;
 scalar_t__ strcmp (char const*,int ) ;

isc_result_t
isc_log_usechannel(isc_logconfig_t *lcfg, const char *name,
     const isc_logcategory_t *category,
     const isc_logmodule_t *module)
{
 isc_log_t *lctx;
 isc_logchannel_t *channel;
 isc_result_t result = ISC_R_SUCCESS;
 unsigned int i;

 REQUIRE(VALID_CONFIG(lcfg));
 REQUIRE(name != ((void*)0));

 lctx = lcfg->lctx;

 REQUIRE(category == ((void*)0) || category->id < lctx->category_count);
 REQUIRE(module == ((void*)0) || module->id < lctx->module_count);

 for (channel = ISC_LIST_HEAD(lcfg->channels); channel != ((void*)0);
      channel = ISC_LIST_NEXT(channel, link))
  if (strcmp(name, channel->name) == 0)
   break;

 if (channel == ((void*)0))
  return (ISC_R_NOTFOUND);

 if (category != ((void*)0))
  result = assignchannel(lcfg, category->id, module, channel);

 else




  for (i = 0; i < lctx->category_count; i++) {
   result = assignchannel(lcfg, i, module, channel);
   if (result != ISC_R_SUCCESS)
    break;
  }

 return (result);
}
