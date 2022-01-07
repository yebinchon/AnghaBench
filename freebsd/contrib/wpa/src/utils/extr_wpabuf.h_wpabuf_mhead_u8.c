
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 scalar_t__ wpabuf_mhead (struct wpabuf*) ;

__attribute__((used)) static inline u8 * wpabuf_mhead_u8(struct wpabuf *buf)
{
 return (u8 *) wpabuf_mhead(buf);
}
