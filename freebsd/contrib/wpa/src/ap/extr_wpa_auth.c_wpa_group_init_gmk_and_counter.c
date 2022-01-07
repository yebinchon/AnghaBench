
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_group {int * Counter; int * GMK; } ;
struct wpa_authenticator {unsigned long* addr; } ;
typedef int rkey ;
typedef int ptr ;
typedef int buf ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPA_GMK_LEN ;
 int WPA_NONCE_LEN ;
 int os_memcpy (int *,unsigned long*,int) ;
 int os_memset (int *,int,int) ;
 scalar_t__ random_get_bytes (int *,int) ;
 scalar_t__ sha1_prf (int *,int,char*,int *,int,int *,int) ;
 int wpa_get_ntp_timestamp (int *) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;

__attribute__((used)) static int wpa_group_init_gmk_and_counter(struct wpa_authenticator *wpa_auth,
       struct wpa_group *group)
{
 u8 buf[ETH_ALEN + 8 + sizeof(unsigned long)];
 u8 rkey[32];
 unsigned long ptr;

 if (random_get_bytes(group->GMK, WPA_GMK_LEN) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "GMK", group->GMK, WPA_GMK_LEN);





 os_memcpy(buf, wpa_auth->addr, ETH_ALEN);
 wpa_get_ntp_timestamp(buf + ETH_ALEN);
 ptr = (unsigned long) group;
 os_memcpy(buf + ETH_ALEN + 8, &ptr, sizeof(ptr));




 if (random_get_bytes(rkey, sizeof(rkey)) < 0)
  return -1;

 if (sha1_prf(rkey, sizeof(rkey), "Init Counter", buf, sizeof(buf),
       group->Counter, WPA_NONCE_LEN) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "Key Counter",
   group->Counter, WPA_NONCE_LEN);

 return 0;
}
