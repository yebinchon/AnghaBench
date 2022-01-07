
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_btp(netdissect_options *ndo,
          const u_char *bp)
{
 uint16_t dest = EXTRACT_16BITS(bp+0);
 uint16_t src = EXTRACT_16BITS(bp+2);
 ND_PRINT((ndo, "; BTP Dst:%u Src:%u", dest, src));
}
