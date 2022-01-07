
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct wpa_supplicant {int dummy; } ;
struct sta_info {int plink_state; scalar_t__ peer_aid; scalar_t__ peer_lid; scalar_t__ my_lid; } ;
typedef int llid ;


 int PLINK_IDLE ;
 scalar_t__ llid_in_use (struct wpa_supplicant*,scalar_t__) ;
 scalar_t__ os_get_random (int *,int) ;

__attribute__((used)) static void mesh_mpm_init_link(struct wpa_supplicant *wpa_s,
          struct sta_info *sta)
{
 u16 llid;

 do {
  if (os_get_random((u8 *) &llid, sizeof(llid)) < 0)
   llid = 0;
 } while (!llid || llid_in_use(wpa_s, llid));

 sta->my_lid = llid;
 sta->peer_lid = 0;
 sta->peer_aid = 0;





 sta->plink_state = PLINK_IDLE;
}
