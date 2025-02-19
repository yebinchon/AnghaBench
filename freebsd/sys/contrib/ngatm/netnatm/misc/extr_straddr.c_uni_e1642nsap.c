
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;


 int isdigit (char const) ;
 size_t strlen (char const*) ;

int
uni_e1642nsap(u_char *nsap, const char *e164)
{
 size_t len;
 int fill;
 u_int i;

 if((len = strlen(e164)) > 15 || len == 0)
  return -1;
 for(i = 0; i < len; i++)
  if(!isdigit(e164[i]))
   return -1;

 *nsap++ = 0x45;
 fill = (15 - len) / 2;
 while(fill--)
  *nsap++ = 0x00;
 if((len & 1) == 0) {
  *nsap++ = *e164++ - '0';
  len--;
 }
 while(len > 1) {
  len -= 2;
  *nsap = (*e164++ - '0') << 4;
  *nsap++ |= *e164 - '0';
 }
 *nsap++ = ((*e164++ - '0') << 4) | 0xf;
 for(fill = 0; fill < 11; fill++)
  *nsap++ = 0;

 return 0;
}
