
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int flags; } ;


 int WLAN_STA_AUTHORIZED ;

__attribute__((used)) static inline int ap_sta_is_authorized(struct sta_info *sta)
{
 return sta->flags & WLAN_STA_AUTHORIZED;
}
