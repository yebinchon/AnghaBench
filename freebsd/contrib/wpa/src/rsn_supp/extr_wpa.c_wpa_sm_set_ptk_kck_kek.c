
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {size_t kck_len; size_t kek_len; int kek; int kck; } ;
struct wpa_sm {int ptk_set; TYPE_1__ ptk; } ;


 int MSG_DEBUG ;
 size_t WPA_KCK_MAX_LEN ;
 size_t WPA_KEK_MAX_LEN ;
 int os_memcpy (int ,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

void wpa_sm_set_ptk_kck_kek(struct wpa_sm *sm,
       const u8 *ptk_kck, size_t ptk_kck_len,
       const u8 *ptk_kek, size_t ptk_kek_len)
{
 if (ptk_kck && ptk_kck_len <= WPA_KCK_MAX_LEN) {
  os_memcpy(sm->ptk.kck, ptk_kck, ptk_kck_len);
  sm->ptk.kck_len = ptk_kck_len;
  wpa_printf(MSG_DEBUG, "Updated PTK KCK");
 }
 if (ptk_kek && ptk_kek_len <= WPA_KEK_MAX_LEN) {
  os_memcpy(sm->ptk.kek, ptk_kek, ptk_kek_len);
  sm->ptk.kek_len = ptk_kek_len;
  wpa_printf(MSG_DEBUG, "Updated PTK KEK");
 }
 sm->ptk_set = 1;
}
