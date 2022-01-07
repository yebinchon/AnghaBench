
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ os_memcmp (int const*,char const*,size_t) ;
 size_t os_strlen (char const*) ;

__attribute__((used)) static const u8 * search_tag(const char *tag, const u8 *buf, size_t len)
{
 size_t i, plen;

 plen = os_strlen(tag);
 if (len < plen)
  return ((void*)0);

 for (i = 0; i < len - plen; i++) {
  if (os_memcmp(buf + i, tag, plen) == 0)
   return buf + i;
 }

 return ((void*)0);
}
