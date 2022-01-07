
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct eapol_state_machine {int dot1xAuthEapolFramesTx; int sta; TYPE_3__* eapol; int addr; scalar_t__ last_eap_id; } ;
struct eap_hdr {scalar_t__ identifier; int length; int code; } ;
typedef int eap ;
struct TYPE_5__ {int ctx; } ;
struct TYPE_4__ {int (* eapol_send ) (int ,int ,int ,int *,int) ;} ;
struct TYPE_6__ {TYPE_2__ conf; TYPE_1__ cb; } ;


 int EAPOL_LOGGER_DEBUG ;
 int EAP_CODE_FAILURE ;
 int EAP_CODE_SUCCESS ;
 int IEEE802_1X_TYPE_EAP_PACKET ;
 int eapol_auth_vlogger (TYPE_3__*,int ,int ,char*,char*,scalar_t__) ;
 int host_to_be16 (int) ;
 int os_memset (struct eap_hdr*,int ,int) ;
 int stub1 (int ,int ,int ,int *,int) ;

__attribute__((used)) static void eapol_auth_tx_canned_eap(struct eapol_state_machine *sm,
         int success)
{
 struct eap_hdr eap;

 os_memset(&eap, 0, sizeof(eap));

 eap.code = success ? EAP_CODE_SUCCESS : EAP_CODE_FAILURE;
 eap.identifier = ++sm->last_eap_id;
 eap.length = host_to_be16(sizeof(eap));

 eapol_auth_vlogger(sm->eapol, sm->addr, EAPOL_LOGGER_DEBUG,
      "Sending canned EAP packet %s (identifier %d)",
      success ? "SUCCESS" : "FAILURE", eap.identifier);
 sm->eapol->cb.eapol_send(sm->eapol->conf.ctx, sm->sta,
     IEEE802_1X_TYPE_EAP_PACKET,
     (u8 *) &eap, sizeof(eap));
 sm->dot1xAuthEapolFramesTx++;
}
