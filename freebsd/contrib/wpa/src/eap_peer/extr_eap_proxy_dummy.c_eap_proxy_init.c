
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_callbacks {int dummy; } ;
struct eap_proxy_sm {int dummy; } ;



struct eap_proxy_sm *
eap_proxy_init(void *eapol_ctx, const struct eapol_callbacks *eapol_cb,
        void *msg_ctx)
{
 return ((void*)0);
}
