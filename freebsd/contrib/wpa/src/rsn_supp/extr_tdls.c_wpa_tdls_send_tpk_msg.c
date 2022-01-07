
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wpa_sm {int dummy; } ;


 int wpa_sm_send_tdls_mgmt (struct wpa_sm*,int const*,int ,int ,int ,int ,int,int const*,size_t) ;

__attribute__((used)) static int wpa_tdls_send_tpk_msg(struct wpa_sm *sm, const u8 *dst,
     u8 action_code, u8 dialog_token,
     u16 status_code, u32 peer_capab,
     int initiator, const u8 *buf, size_t len)
{
 return wpa_sm_send_tdls_mgmt(sm, dst, action_code, dialog_token,
         status_code, peer_capab, initiator, buf,
         len);
}
