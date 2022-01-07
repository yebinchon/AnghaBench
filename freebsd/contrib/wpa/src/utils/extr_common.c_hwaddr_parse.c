
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t ETH_ALEN ;
 int hex2byte (char const*) ;

__attribute__((used)) static const char * hwaddr_parse(const char *txt, u8 *addr)
{
 size_t i;

 for (i = 0; i < ETH_ALEN; i++) {
  int a;

  a = hex2byte(txt);
  if (a < 0)
   return ((void*)0);
  txt += 2;
  addr[i] = a;
  if (i < ETH_ALEN - 1 && *txt++ != ':')
   return ((void*)0);
 }
 return txt;
}
