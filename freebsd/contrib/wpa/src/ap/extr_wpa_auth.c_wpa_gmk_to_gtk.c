
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int data ;


 int ETH_ALEN ;
 int WPA_GMK_LEN ;
 int WPA_GTK_MAX_LEN ;
 int WPA_NONCE_LEN ;
 int forced_memzero (int *,int) ;
 int os_memcpy (int *,int const*,int) ;
 int os_memset (int *,int,int) ;
 scalar_t__ random_get_bytes (int *,size_t) ;
 scalar_t__ sha1_prf (int const*,int ,char const*,int *,int,int *,size_t) ;
 scalar_t__ sha256_prf (int const*,int ,char const*,int *,int,int *,size_t) ;
 scalar_t__ sha384_prf (int const*,int ,char const*,int *,int,int *,size_t) ;
 int wpa_get_ntp_timestamp (int *) ;

__attribute__((used)) static int wpa_gmk_to_gtk(const u8 *gmk, const char *label, const u8 *addr,
     const u8 *gnonce, u8 *gtk, size_t gtk_len)
{
 u8 data[ETH_ALEN + WPA_NONCE_LEN + 8 + WPA_GTK_MAX_LEN];
 u8 *pos;
 int ret = 0;
 os_memset(data, 0, sizeof(data));
 os_memcpy(data, addr, ETH_ALEN);
 os_memcpy(data + ETH_ALEN, gnonce, WPA_NONCE_LEN);
 pos = data + ETH_ALEN + WPA_NONCE_LEN;
 wpa_get_ntp_timestamp(pos);



 pos += 8;
 if (random_get_bytes(pos, gtk_len) < 0)
  ret = -1;
 if (sha1_prf(gmk, WPA_GMK_LEN, label, data, sizeof(data),
       gtk, gtk_len) < 0)
  ret = -1;



 forced_memzero(data, sizeof(data));

 return ret;
}
