
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WPA_PUT_LE16 (int *,int) ;
 scalar_t__ wpabuf_put (struct wpabuf*,int ) ;

void gas_anqp_set_element_len(struct wpabuf *buf, u8 *len_pos)
{
 WPA_PUT_LE16(len_pos, (u8 *) wpabuf_put(buf, 0) - len_pos - 2);
}
