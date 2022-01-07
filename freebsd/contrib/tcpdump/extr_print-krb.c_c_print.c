
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int netdissect_options ;


 int ND_ISASCII (char) ;
 int ND_ISPRINT (char) ;
 int ND_PRINT (int *) ;
 char ND_TOASCII (char) ;

__attribute__((used)) static const u_char *
c_print(netdissect_options *ndo,
        register const u_char *s, register const u_char *ep)
{
 register u_char c;
 register int flag;

 flag = 1;
 while (s < ep) {
  c = *s++;
  if (c == '\0') {
   flag = 0;
   break;
  }
  if (!ND_ISASCII(c)) {
   c = ND_TOASCII(c);
   ND_PRINT((ndo, "M-"));
  }
  if (!ND_ISPRINT(c)) {
   c ^= 0x40;
   ND_PRINT((ndo, "^"));
  }
  ND_PRINT((ndo, "%c", c));
 }
 if (flag)
  return ((void*)0);
 return (s);
}
