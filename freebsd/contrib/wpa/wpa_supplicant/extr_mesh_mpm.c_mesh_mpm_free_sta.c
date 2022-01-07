
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {scalar_t__ plink_state; } ;
struct hostapd_data {int num_plinks; } ;


 int ELOOP_ALL_CTX ;
 scalar_t__ PLINK_ESTAB ;
 int eloop_cancel_timeout (int ,int ,struct sta_info*) ;
 int mesh_auth_timer ;
 int plink_timer ;

void mesh_mpm_free_sta(struct hostapd_data *hapd, struct sta_info *sta)
{
 if (sta->plink_state == PLINK_ESTAB)
  hapd->num_plinks--;
 eloop_cancel_timeout(plink_timer, ELOOP_ALL_CTX, sta);
 eloop_cancel_timeout(mesh_auth_timer, ELOOP_ALL_CTX, sta);
}
