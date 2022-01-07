
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {struct wpabuf* (* get_eapReqData ) (int ) ;} ;


 struct wpabuf* stub1 (int ) ;

__attribute__((used)) static struct wpabuf * eapol_get_eapReqData(struct eap_sm *sm)
{
 return sm->eapol_cb->get_eapReqData(sm->eapol_ctx);
}
