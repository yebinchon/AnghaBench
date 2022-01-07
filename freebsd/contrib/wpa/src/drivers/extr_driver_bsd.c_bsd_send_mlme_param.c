
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211req_mlme {int im_macaddr; int im_reason; int im_op; } ;
typedef int mlme ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_MLME ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (struct ieee80211req_mlme*,int ,int) ;
 int set80211var (void*,int ,struct ieee80211req_mlme*,int) ;

__attribute__((used)) static int
bsd_send_mlme_param(void *priv, const u8 op, const u16 reason, const u8 *addr)
{
 struct ieee80211req_mlme mlme;

 os_memset(&mlme, 0, sizeof(mlme));
 mlme.im_op = op;
 mlme.im_reason = reason;
 os_memcpy(mlme.im_macaddr, addr, IEEE80211_ADDR_LEN);
 return set80211var(priv, IEEE80211_IOC_MLME, &mlme, sizeof(mlme));
}
