
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int const FR_FRF15_FRAGTYPE ;
 int const MFR_BEC_MASK ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int bittok2str (int ,char*,int) ;
 int frf_flag_values ;

__attribute__((used)) static void
frf15_print(netdissect_options *ndo,
            const u_char *p, u_int length)
{
    uint16_t sequence_num, flags;

    if (length < 2)
        goto trunc;
    ND_TCHECK2(*p, 2);

    flags = p[0]&MFR_BEC_MASK;
    sequence_num = (p[0]&0x1e)<<7 | p[1];

    ND_PRINT((ndo, "FRF.15, seq 0x%03x, Flags [%s],%s Fragmentation, length %u",
           sequence_num,
           bittok2str(frf_flag_values,"none",flags),
           p[0]&FR_FRF15_FRAGTYPE ? "Interface" : "End-to-End",
           length));
    return;

trunc:
    ND_PRINT((ndo, "[|frf.15]"));
}
