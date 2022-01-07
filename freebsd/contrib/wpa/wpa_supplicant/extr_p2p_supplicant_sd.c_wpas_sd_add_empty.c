
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WPA_PUT_LE16 (int *,int) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;
 int wpabuf_tailroom (struct wpabuf*) ;

__attribute__((used)) static void wpas_sd_add_empty(struct wpabuf *resp, u8 srv_proto,
         u8 srv_trans_id, u8 status)
{
 u8 *len_pos;

 if (wpabuf_tailroom(resp) < 5)
  return;


 len_pos = wpabuf_put(resp, 2);
 wpabuf_put_u8(resp, srv_proto);
 wpabuf_put_u8(resp, srv_trans_id);

 wpabuf_put_u8(resp, status);

 WPA_PUT_LE16(len_pos, (u8 *) wpabuf_put(resp, 0) - len_pos - 2);
}
