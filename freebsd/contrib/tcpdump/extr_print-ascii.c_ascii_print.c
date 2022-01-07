
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef char u_char ;
struct TYPE_4__ {char const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_ISGRAPH (char) ;
 int ND_PRINT (TYPE_1__*) ;

void
ascii_print(netdissect_options *ndo,
            const u_char *cp, u_int length)
{
 u_int caplength;
 register u_char s;

 caplength = (ndo->ndo_snapend >= cp) ? ndo->ndo_snapend - cp : 0;
 if (length > caplength)
  length = caplength;
 ND_PRINT((ndo, "\n"));
 while (length > 0) {
  s = *cp++;
  length--;
  if (s == '\r') {
   if (length > 1 && *cp != '\n')
    ND_PRINT((ndo, "."));
  } else {
   if (!ND_ISGRAPH(s) &&
       (s != '\t' && s != ' ' && s != '\n'))
    ND_PRINT((ndo, "."));
   else
    ND_PRINT((ndo, "%c", s));
  }
 }
}
