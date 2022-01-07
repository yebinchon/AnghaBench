
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int idx; int const* seq; } ;
struct TYPE_4__ {TYPE_1__ crypt; } ;
struct prism2_hostapd_param {TYPE_2__ u; int * sta_addr; int cmd; } ;
struct hostap_driver_data {int dummy; } ;


 int ETH_ALEN ;
 int PRISM2_GET_ENCRYPTION ;
 scalar_t__ hostapd_ioctl (struct hostap_driver_data*,struct prism2_hostapd_param*,size_t) ;
 int os_free (int *) ;
 int os_memcpy (int *,int const*,int) ;
 int os_memset (int *,int,int) ;
 int * os_zalloc (size_t) ;
 int printf (char*) ;

__attribute__((used)) static int hostap_get_seqnum(const char *ifname, void *priv, const u8 *addr,
        int idx, u8 *seq)
{
 struct hostap_driver_data *drv = priv;
 struct prism2_hostapd_param *param;
 u8 *buf;
 size_t blen;
 int ret = 0;

 blen = sizeof(*param) + 32;
 buf = os_zalloc(blen);
 if (buf == ((void*)0))
  return -1;

 param = (struct prism2_hostapd_param *) buf;
 param->cmd = PRISM2_GET_ENCRYPTION;
 if (addr == ((void*)0))
  os_memset(param->sta_addr, 0xff, ETH_ALEN);
 else
  os_memcpy(param->sta_addr, addr, ETH_ALEN);
 param->u.crypt.idx = idx;

 if (hostapd_ioctl(drv, param, blen)) {
  printf("Failed to get encryption.\n");
  ret = -1;
 } else {
  os_memcpy(seq, param->u.crypt.seq, 8);
 }
 os_free(buf);

 return ret;
}
