
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
lane_hdr_print(netdissect_options *ndo, const u_char *bp)
{
 ND_PRINT((ndo, "lecid:%x ", EXTRACT_16BITS(bp)));
}
