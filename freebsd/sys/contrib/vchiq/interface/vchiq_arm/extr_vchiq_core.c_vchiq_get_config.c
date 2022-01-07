
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_INSTANCE_T ;
struct TYPE_5__ {int version_min; int version; int max_services; int max_outstanding_bulks; void* bulk_threshold; void* max_msg_size; } ;
typedef TYPE_1__ VCHIQ_CONFIG_T ;


 int VCHIQ_ERROR ;
 void* VCHIQ_MAX_MSG_SIZE ;
 int VCHIQ_MAX_SERVICES ;
 int VCHIQ_NUM_SERVICE_BULKS ;
 int VCHIQ_SUCCESS ;
 int VCHIQ_VERSION ;
 int VCHIQ_VERSION_MIN ;
 int memcpy (TYPE_1__*,TYPE_1__*,int ) ;
 int min (int,int) ;

VCHIQ_STATUS_T
vchiq_get_config(VCHIQ_INSTANCE_T instance,
 int config_size, VCHIQ_CONFIG_T *pconfig)
{
 VCHIQ_CONFIG_T config;

 (void)instance;

 config.max_msg_size = VCHIQ_MAX_MSG_SIZE;
 config.bulk_threshold = VCHIQ_MAX_MSG_SIZE;
 config.max_outstanding_bulks = VCHIQ_NUM_SERVICE_BULKS;
 config.max_services = VCHIQ_MAX_SERVICES;
 config.version = VCHIQ_VERSION;
 config.version_min = VCHIQ_VERSION_MIN;

 if (config_size > sizeof(VCHIQ_CONFIG_T))
  return VCHIQ_ERROR;

 memcpy(pconfig, &config,
  min(config_size, (int)(sizeof(VCHIQ_CONFIG_T))));

 return VCHIQ_SUCCESS;
}
