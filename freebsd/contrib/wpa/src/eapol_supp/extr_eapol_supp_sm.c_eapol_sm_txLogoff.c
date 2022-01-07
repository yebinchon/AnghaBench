
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eapol_sm {int dot1xSuppEapolFramesTx; int dot1xSuppEapolLogoffFramesTx; TYPE_1__* ctx; } ;
struct TYPE_2__ {int eapol_send_ctx; int (* eapol_send ) (int ,int ,int *,int ) ;} ;


 int IEEE802_1X_TYPE_EAPOL_LOGOFF ;
 int MSG_DEBUG ;
 int stub1 (int ,int ,int *,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eapol_sm_txLogoff(struct eapol_sm *sm)
{
 wpa_printf(MSG_DEBUG, "EAPOL: txLogoff");
 sm->ctx->eapol_send(sm->ctx->eapol_send_ctx,
       IEEE802_1X_TYPE_EAPOL_LOGOFF, (u8 *) "", 0);
 sm->dot1xSuppEapolLogoffFramesTx++;
 sm->dot1xSuppEapolFramesTx++;
}
