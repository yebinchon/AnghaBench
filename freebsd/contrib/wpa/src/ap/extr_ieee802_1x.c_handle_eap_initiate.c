
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {struct eapol_state_machine* eapol_sm; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {int eapolEap; TYPE_1__* eap_if; int addr; } ;
struct eap_hdr {int length; int identifier; int code; } ;
struct TYPE_2__ {int eapRespData; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_IEEE8021X ;
 int MSG_INFO ;
 int TRUE ;
 int be_to_host16 (int ) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_alloc_copy (struct eap_hdr*,size_t) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void handle_eap_initiate(struct hostapd_data *hapd,
    struct sta_info *sta, struct eap_hdr *eap,
    size_t len)
{
}
