
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int ETH_ALEN ;
 char* hwaddr_parse (char const*,scalar_t__*) ;
 scalar_t__ isspace (unsigned char) ;
 int os_memset (scalar_t__*,int,int ) ;

int hwaddr_masked_aton(const char *txt, u8 *addr, u8 *mask, u8 maskable)
{
 const char *r;


 r = hwaddr_parse(txt, addr);
 if (!r)
  return -1;


 if (*r == '\0' || isspace((unsigned char) *r)) {

  os_memset(mask, 0xff, ETH_ALEN);
 } else if (maskable && *r == '/') {

  r = hwaddr_parse(r + 1, mask);

  if (!r)
   return -1;
 } else {

  return -1;
 }

 return 0;
}
