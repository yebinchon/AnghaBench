
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 scalar_t__ os_memcmp (int const*,int const*,size_t) ;
 int* wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static int roaming_consortium_anqp_match(const struct wpabuf *anqp,
      const u8 *rc_id, size_t rc_len)
{
 const u8 *pos, *end;
 u8 len;

 if (anqp == ((void*)0))
  return 0;

 pos = wpabuf_head(anqp);
 end = pos + wpabuf_len(anqp);


 while (pos < end) {
  len = *pos++;
  if (len > end - pos)
   break;
  if (len == rc_len && os_memcmp(pos, rc_id, rc_len) == 0)
   return 1;
  pos += len;
 }

 return 0;
}
