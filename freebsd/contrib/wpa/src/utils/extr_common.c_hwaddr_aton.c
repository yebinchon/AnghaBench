
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ hwaddr_parse (char const*,int *) ;

int hwaddr_aton(const char *txt, u8 *addr)
{
 return hwaddr_parse(txt, addr) ? 0 : -1;
}
