
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ os_memcmp (int const*,int const*,size_t) ;

__attribute__((used)) static int roaming_consortium_element_match(const u8 *ie, const u8 *rc_id,
         size_t rc_len)
{
 const u8 *pos, *end;
 u8 lens;

 if (ie == ((void*)0))
  return 0;

 pos = ie + 2;
 end = ie + 2 + ie[1];







 if (end - pos < 2)
  return 0;

 pos++;
 lens = *pos++;
 if ((lens & 0x0f) + (lens >> 4) > end - pos)
  return 0;

 if ((lens & 0x0f) == rc_len && os_memcmp(pos, rc_id, rc_len) == 0)
  return 1;
 pos += lens & 0x0f;

 if ((lens >> 4) == rc_len && os_memcmp(pos, rc_id, rc_len) == 0)
  return 1;
 pos += lens >> 4;

 if (pos < end && (size_t) (end - pos) == rc_len &&
     os_memcmp(pos, rc_id, rc_len) == 0)
  return 1;

 return 0;
}
