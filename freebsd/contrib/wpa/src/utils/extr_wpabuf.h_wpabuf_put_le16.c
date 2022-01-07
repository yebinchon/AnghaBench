
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int WPA_PUT_LE16 (int *,int ) ;
 scalar_t__ wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static inline void wpabuf_put_le16(struct wpabuf *buf, u16 data)
{
 u8 *pos = (u8 *) wpabuf_put(buf, 2);
 WPA_PUT_LE16(pos, data);
}
