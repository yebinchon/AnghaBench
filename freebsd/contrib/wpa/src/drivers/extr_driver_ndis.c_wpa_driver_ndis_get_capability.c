
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int auth; size_t key_mgmt; int enc; int flags; } ;
struct wpa_driver_ndis_data {int has_capability; TYPE_1__ capa; scalar_t__ no_of_pmkid; } ;
typedef int buf ;
struct TYPE_6__ {int AuthModeSupported; int EncryptStatusSupported; } ;
struct TYPE_5__ {int Version; size_t NoOfAuthEncryptPairsSupported; TYPE_3__* AuthenticationEncryptionSupported; scalar_t__ NoOfPMKIDs; } ;
typedef TYPE_2__ NDIS_802_11_CAPABILITY ;
typedef TYPE_3__ NDIS_802_11_AUTHENTICATION_ENCRYPTION ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int OID_802_11_CAPABILITY ;
 int WPA_DRIVER_AUTH_OPEN ;
 int WPA_DRIVER_AUTH_SHARED ;
 int WPA_DRIVER_CAPA_ENC_CCMP ;
 int WPA_DRIVER_CAPA_ENC_TKIP ;
 int WPA_DRIVER_CAPA_ENC_WEP104 ;
 int WPA_DRIVER_CAPA_ENC_WEP40 ;
 size_t WPA_DRIVER_CAPA_KEY_MGMT_WPA ;
 size_t WPA_DRIVER_CAPA_KEY_MGMT_WPA2 ;
 size_t WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK ;
 size_t WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE ;
 size_t WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK ;
 int WPA_DRIVER_FLAGS_DRIVER_IE ;
 int ndis_get_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int wpa_driver_ndis_get_wpa_capability (struct wpa_driver_ndis_data*) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void wpa_driver_ndis_get_capability(struct wpa_driver_ndis_data *drv)
{
 char buf[512];
 int len;
 size_t i;
 NDIS_802_11_CAPABILITY *c;

 drv->capa.flags = WPA_DRIVER_FLAGS_DRIVER_IE;

 len = ndis_get_oid(drv, OID_802_11_CAPABILITY, buf, sizeof(buf));
 if (len < 0) {
  wpa_driver_ndis_get_wpa_capability(drv);
  return;
 }

 wpa_hexdump(MSG_MSGDUMP, "OID_802_11_CAPABILITY", (u8 *) buf, len);
 c = (NDIS_802_11_CAPABILITY *) buf;
 if (len < sizeof(*c) || c->Version != 2) {
  wpa_printf(MSG_DEBUG, "NDIS: unsupported "
      "OID_802_11_CAPABILITY data");
  return;
 }
 wpa_printf(MSG_DEBUG, "NDIS: Driver supports OID_802_11_CAPABILITY - "
     "NoOfPMKIDs %d NoOfAuthEncrPairs %d",
     (int) c->NoOfPMKIDs,
     (int) c->NoOfAuthEncryptPairsSupported);
 drv->has_capability = 1;
 drv->no_of_pmkid = c->NoOfPMKIDs;
 for (i = 0; i < c->NoOfAuthEncryptPairsSupported; i++) {
  NDIS_802_11_AUTHENTICATION_ENCRYPTION *ae;
  ae = &c->AuthenticationEncryptionSupported[i];
  if ((char *) (ae + 1) > buf + len) {
   wpa_printf(MSG_DEBUG, "NDIS: auth/encr pair list "
       "overflow");
   break;
  }
  wpa_printf(MSG_MSGDUMP, "NDIS: %d - auth %d encr %d",
      i, (int) ae->AuthModeSupported,
      (int) ae->EncryptStatusSupported);
  switch (ae->AuthModeSupported) {
  case 137:
   drv->capa.auth |= WPA_DRIVER_AUTH_OPEN;
   break;
  case 136:
   drv->capa.auth |= WPA_DRIVER_AUTH_SHARED;
   break;
  case 135:
   drv->capa.key_mgmt |= WPA_DRIVER_CAPA_KEY_MGMT_WPA;
   break;
  case 131:
   drv->capa.key_mgmt |= WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK;
   break;
  case 134:
   drv->capa.key_mgmt |= WPA_DRIVER_CAPA_KEY_MGMT_WPA2;
   break;
  case 133:
   drv->capa.key_mgmt |=
    WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK;
   break;
  case 132:
   drv->capa.key_mgmt |=
    WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE;
   break;
  default:
   break;
  }
  switch (ae->EncryptStatusSupported) {
  case 130:
   drv->capa.enc |= WPA_DRIVER_CAPA_ENC_WEP40;
   drv->capa.enc |= WPA_DRIVER_CAPA_ENC_WEP104;
   break;
  case 129:
   drv->capa.enc |= WPA_DRIVER_CAPA_ENC_TKIP;
   break;
  case 128:
   drv->capa.enc |= WPA_DRIVER_CAPA_ENC_CCMP;
   break;
  default:
   break;
  }
 }

 wpa_printf(MSG_DEBUG, "NDIS: driver capabilities: key_mgmt 0x%x "
     "enc 0x%x auth 0x%x",
     drv->capa.key_mgmt, drv->capa.enc, drv->capa.auth);
}
