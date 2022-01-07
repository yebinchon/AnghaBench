
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_14__ {scalar_t__ maximum_size; void* versions; int * name; void* stream; } ;
struct TYPE_15__ {TYPE_1__ file; int facility; } ;
typedef TYPE_2__ isc_logdestination_t ;
struct TYPE_16__ {int highest_level; int channels; int magic; int dynamic; int * tag; scalar_t__ duplicate_interval; scalar_t__ channellist_count; int * channellists; TYPE_4__* lctx; } ;
typedef TYPE_3__ isc_logconfig_t ;
struct TYPE_17__ {int mctx; } ;
typedef TYPE_4__ isc_log_t ;
struct TYPE_13__ {int channel; } ;


 int ISC_FALSE ;
 int ISC_LIST_HEAD (int ) ;
 int ISC_LIST_INIT (int ) ;
 int ISC_LOG_DYNAMIC ;
 int ISC_LOG_INFO ;
 int ISC_LOG_PRINTTIME ;
 void* ISC_LOG_ROLLNEVER ;
 int ISC_LOG_TOFILEDESC ;
 int ISC_LOG_TONULL ;
 int ISC_LOG_TOSYSLOG ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_SUCCESS ;
 int LCFG_MAGIC ;
 int LOG_DAEMON ;
 int REQUIRE (int) ;
 int VALID_CONTEXT (TYPE_4__*) ;
 TYPE_11__ default_channel ;
 scalar_t__ isc_log_createchannel (TYPE_3__*,char*,int ,int,TYPE_2__*,int ) ;
 int isc_logconfig_destroy (TYPE_3__**) ;
 TYPE_3__* isc_mem_get (int ,int) ;
 void* stderr ;

isc_result_t
isc_logconfig_create(isc_log_t *lctx, isc_logconfig_t **lcfgp) {
 isc_logconfig_t *lcfg;
 isc_logdestination_t destination;
 isc_result_t result = ISC_R_SUCCESS;
 int level = ISC_LOG_INFO;

 REQUIRE(lcfgp != ((void*)0) && *lcfgp == ((void*)0));
 REQUIRE(VALID_CONTEXT(lctx));

 lcfg = isc_mem_get(lctx->mctx, sizeof(*lcfg));

 if (lcfg != ((void*)0)) {
  lcfg->lctx = lctx;
  lcfg->channellists = ((void*)0);
  lcfg->channellist_count = 0;
  lcfg->duplicate_interval = 0;
  lcfg->highest_level = level;
  lcfg->tag = ((void*)0);
  lcfg->dynamic = ISC_FALSE;

  ISC_LIST_INIT(lcfg->channels);







  lcfg->magic = LCFG_MAGIC;

 } else
  result = ISC_R_NOMEMORY;





 if (result == ISC_R_SUCCESS) {
  destination.facility = LOG_DAEMON;
  result = isc_log_createchannel(lcfg, "default_syslog",
            ISC_LOG_TOSYSLOG, level,
            &destination, 0);
 }

 if (result == ISC_R_SUCCESS) {
  destination.file.stream = stderr;
  destination.file.name = ((void*)0);
  destination.file.versions = ISC_LOG_ROLLNEVER;
  destination.file.maximum_size = 0;
  result = isc_log_createchannel(lcfg, "default_stderr",
            ISC_LOG_TOFILEDESC,
            level,
            &destination,
            ISC_LOG_PRINTTIME);
 }

 if (result == ISC_R_SUCCESS) {





  default_channel.channel = ISC_LIST_HEAD(lcfg->channels);

  destination.file.stream = stderr;
  destination.file.name = ((void*)0);
  destination.file.versions = ISC_LOG_ROLLNEVER;
  destination.file.maximum_size = 0;
  result = isc_log_createchannel(lcfg, "default_debug",
            ISC_LOG_TOFILEDESC,
            ISC_LOG_DYNAMIC,
            &destination,
            ISC_LOG_PRINTTIME);
 }

 if (result == ISC_R_SUCCESS)
  result = isc_log_createchannel(lcfg, "null",
            ISC_LOG_TONULL,
            ISC_LOG_DYNAMIC,
            ((void*)0), 0);

 if (result == ISC_R_SUCCESS)
  *lcfgp = lcfg;

 else
  if (lcfg != ((void*)0))
   isc_logconfig_destroy(&lcfg);

 return (result);
}
