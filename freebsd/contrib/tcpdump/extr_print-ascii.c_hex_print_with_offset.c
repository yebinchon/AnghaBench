
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ HEXDUMP_BYTES_PER_LINE ;
 int ND_PRINT (TYPE_1__*) ;

void
hex_print_with_offset(netdissect_options *ndo,
                      const char *ident, const u_char *cp, u_int length,
        u_int oset)
{
 u_int caplength;
 register u_int i, s;
 register int nshorts;

 caplength = (ndo->ndo_snapend >= cp) ? ndo->ndo_snapend - cp : 0;
 if (length > caplength)
  length = caplength;
 nshorts = (u_int) length / sizeof(u_short);
 i = 0;
 while (--nshorts >= 0) {
  if ((i++ % 8) == 0) {
   ND_PRINT((ndo,"%s0x%04x: ", ident, oset));
   oset += HEXDUMP_BYTES_PER_LINE;
  }
  s = *cp++;
  ND_PRINT((ndo," %02x%02x", s, *cp++));
 }
 if (length & 1) {
  if ((i % 8) == 0)
   ND_PRINT((ndo,"%s0x%04x: ", ident, oset));
  ND_PRINT((ndo," %02x", *cp));
 }
}
