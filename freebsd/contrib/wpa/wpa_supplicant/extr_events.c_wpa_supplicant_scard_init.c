
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {int * scard; int eapol; int wpa; TYPE_2__* conf; } ;
struct TYPE_3__ {struct eap_method_type* eap_methods; int * pcsc; } ;
struct wpa_ssid {TYPE_1__ eap; } ;
struct eap_method_type {scalar_t__ vendor; scalar_t__ method; } ;
struct TYPE_4__ {int pcsc_reader; scalar_t__ external_sim; } ;


 scalar_t__ EAP_TYPE_AKA ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 scalar_t__ EAP_TYPE_NONE ;
 scalar_t__ EAP_TYPE_SIM ;
 scalar_t__ EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int * eap_peer_get_eap_method (scalar_t__,scalar_t__) ;
 int eapol_sm_register_scard_ctx (int ,int *) ;
 int * scard_init (int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_sm_set_scard_ctx (int ,int *) ;

int wpa_supplicant_scard_init(struct wpa_supplicant *wpa_s,
         struct wpa_ssid *ssid)
{
 return 0;
}
