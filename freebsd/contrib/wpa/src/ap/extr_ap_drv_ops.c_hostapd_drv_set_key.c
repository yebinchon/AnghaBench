
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;
struct TYPE_2__ {int (* set_key ) (char const*,int ,int,int const*,int,int,int const*,size_t,int const*,size_t) ;} ;


 int stub1 (char const*,int ,int,int const*,int,int,int const*,size_t,int const*,size_t) ;

int hostapd_drv_set_key(const char *ifname, struct hostapd_data *hapd,
   enum wpa_alg alg, const u8 *addr,
   int key_idx, int set_tx,
   const u8 *seq, size_t seq_len,
   const u8 *key, size_t key_len)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_key == ((void*)0))
  return 0;
 return hapd->driver->set_key(ifname, hapd->drv_priv, alg, addr,
         key_idx, set_tx, seq, seq_len, key,
         key_len);
}
