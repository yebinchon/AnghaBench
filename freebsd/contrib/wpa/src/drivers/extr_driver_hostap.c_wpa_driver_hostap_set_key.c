
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int idx; size_t key_len; int flags; scalar_t__ alg; } ;
struct TYPE_4__ {TYPE_1__ crypt; } ;
struct prism2_hostapd_param {TYPE_2__ u; int * sta_addr; int cmd; } ;
struct hostap_driver_data {int dummy; } ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;


 size_t ETH_ALEN ;
 int HOSTAP_CRYPT_ALG_NAME_LEN ;
 int HOSTAP_CRYPT_FLAG_SET_TX_KEY ;
 int PRISM2_SET_ENCRYPTION ;




 int free (int *) ;
 scalar_t__ hostapd_ioctl (struct hostap_driver_data*,struct prism2_hostapd_param*,size_t) ;
 int memcpy (int *,int const*,size_t) ;
 int memset (int *,int,size_t) ;
 int os_free (int *) ;
 int os_strlcpy (char*,char*,int ) ;
 int * os_zalloc (size_t) ;
 int printf (char*) ;

__attribute__((used)) static int wpa_driver_hostap_set_key(const char *ifname, void *priv,
         enum wpa_alg alg, const u8 *addr,
         int key_idx, int set_tx,
         const u8 *seq, size_t seq_len,
         const u8 *key, size_t key_len)
{
 struct hostap_driver_data *drv = priv;
 struct prism2_hostapd_param *param;
 u8 *buf;
 size_t blen;
 int ret = 0;

 blen = sizeof(*param) + key_len;
 buf = os_zalloc(blen);
 if (buf == ((void*)0))
  return -1;

 param = (struct prism2_hostapd_param *) buf;
 param->cmd = PRISM2_SET_ENCRYPTION;
 if (addr == ((void*)0))
  memset(param->sta_addr, 0xff, ETH_ALEN);
 else
  memcpy(param->sta_addr, addr, ETH_ALEN);
 switch (alg) {
 case 130:
  os_strlcpy((char *) param->u.crypt.alg, "NONE",
      HOSTAP_CRYPT_ALG_NAME_LEN);
  break;
 case 128:
  os_strlcpy((char *) param->u.crypt.alg, "WEP",
      HOSTAP_CRYPT_ALG_NAME_LEN);
  break;
 case 129:
  os_strlcpy((char *) param->u.crypt.alg, "TKIP",
      HOSTAP_CRYPT_ALG_NAME_LEN);
  break;
 case 131:
  os_strlcpy((char *) param->u.crypt.alg, "CCMP",
      HOSTAP_CRYPT_ALG_NAME_LEN);
  break;
 default:
  os_free(buf);
  return -1;
 }
 param->u.crypt.flags = set_tx ? HOSTAP_CRYPT_FLAG_SET_TX_KEY : 0;
 param->u.crypt.idx = key_idx;
 param->u.crypt.key_len = key_len;
 memcpy((u8 *) (param + 1), key, key_len);

 if (hostapd_ioctl(drv, param, blen)) {
  printf("Failed to set encryption.\n");
  ret = -1;
 }
 free(buf);

 return ret;
}
