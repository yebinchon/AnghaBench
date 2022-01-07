
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {int own_addr; } ;


 int ETH_ALEN ;
 int os_memcpy (int ,int const*,int ) ;

void wpa_sm_set_own_addr(struct wpa_sm *sm, const u8 *addr)
{
 if (sm)
  os_memcpy(sm->own_addr, addr, ETH_ALEN);
}
