
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eap_sm {int user_eap_method_index; int currentId; TYPE_2__* user; int update_user; int * identity; } ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {int vendor; scalar_t__ method; } ;
typedef scalar_t__ EapType ;


 int EAP_MAX_METHODS ;
 scalar_t__ EAP_TYPE_IDENTITY ;
 scalar_t__ EAP_TYPE_NONE ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int TRUE ;
 int wpa_printf (int ,char*,int,scalar_t__) ;

__attribute__((used)) static EapType eap_sm_Policy_getNextMethod(struct eap_sm *sm, int *vendor)
{
 EapType next;
 int idx = sm->user_eap_method_index;
 if (sm->identity == ((void*)0) || sm->currentId == -1) {
  *vendor = EAP_VENDOR_IETF;
  next = EAP_TYPE_IDENTITY;
  sm->update_user = TRUE;
 } else if (sm->user && idx < EAP_MAX_METHODS &&
     (sm->user->methods[idx].vendor != EAP_VENDOR_IETF ||
      sm->user->methods[idx].method != EAP_TYPE_NONE)) {
  *vendor = sm->user->methods[idx].vendor;
  next = sm->user->methods[idx].method;
  sm->user_eap_method_index++;
 } else {
  *vendor = EAP_VENDOR_IETF;
  next = EAP_TYPE_NONE;
 }
 wpa_printf(MSG_DEBUG, "EAP: getNextMethod: vendor %d type %d",
     *vendor, next);
 return next;
}
