
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 scalar_t__ wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static inline void wpabuf_put_u8(struct wpabuf *buf, u8 data)
{
 u8 *pos = (u8 *) wpabuf_put(buf, 1);
 *pos = data;
}
