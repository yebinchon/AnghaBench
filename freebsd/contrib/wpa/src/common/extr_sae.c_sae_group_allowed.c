
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sae_data {scalar_t__ state; int group; TYPE_1__* tmp; } ;
struct TYPE_2__ {scalar_t__ dh; } ;


 int MSG_DEBUG ;
 scalar_t__ SAE_COMMITTED ;
 int WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED ;
 int WLAN_STATUS_SUCCESS ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 scalar_t__ sae_set_group (struct sae_data*,int) ;
 int wpa_printf (int ,char*,...) ;

u16 sae_group_allowed(struct sae_data *sae, int *allowed_groups, u16 group)
{
 if (allowed_groups) {
  int i;
  for (i = 0; allowed_groups[i] > 0; i++) {
   if (allowed_groups[i] == group)
    break;
  }
  if (allowed_groups[i] != group) {
   wpa_printf(MSG_DEBUG, "SAE: Proposed group %u not "
       "enabled in the current configuration",
       group);
   return WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED;
  }
 }

 if (sae->state == SAE_COMMITTED && group != sae->group) {
  wpa_printf(MSG_DEBUG, "SAE: Do not allow group to be changed");
  return WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED;
 }

 if (group != sae->group && sae_set_group(sae, group) < 0) {
  wpa_printf(MSG_DEBUG, "SAE: Unsupported Finite Cyclic Group %u",
      group);
  return WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED;
 }

 if (sae->tmp == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "SAE: Group information not yet initialized");
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 }

 if (sae->tmp->dh && !allowed_groups) {
  wpa_printf(MSG_DEBUG, "SAE: Do not allow FFC group %u without "
      "explicit configuration enabling it", group);
  return WLAN_STATUS_FINITE_CYCLIC_GROUP_NOT_SUPPORTED;
 }

 return WLAN_STATUS_SUCCESS;
}
