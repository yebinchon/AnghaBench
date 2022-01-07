
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_sm {struct wpabuf* eapRespData; } ;



struct wpabuf * eap_get_eapRespData(struct eap_sm *sm)
{
 struct wpabuf *resp;

 if (sm == ((void*)0) || sm->eapRespData == ((void*)0))
  return ((void*)0);

 resp = sm->eapRespData;
 sm->eapRespData = ((void*)0);

 return resp;
}
