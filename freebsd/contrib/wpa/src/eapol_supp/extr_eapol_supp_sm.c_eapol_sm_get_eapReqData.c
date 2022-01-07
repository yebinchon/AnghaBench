
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eapol_sm {struct wpabuf* eapReqData; } ;



__attribute__((used)) static struct wpabuf * eapol_sm_get_eapReqData(void *ctx)
{
 struct eapol_sm *sm = ctx;
 if (sm == ((void*)0) || sm->eapReqData == ((void*)0))
  return ((void*)0);

 return sm->eapReqData;
}
