
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_tc_bandwidth_table(netdissect_options *ndo,
                         const u_char *ptr)
{
    ND_PRINT((ndo, "\n\t    TC Bandwidth Table"));
    ND_PRINT((ndo, "\n\t     TC%%   : 0   1   2   3   4   5   6   7"));
    ND_PRINT((ndo, "\n\t     Value : %-3d %-3d %-3d %-3d %-3d %-3d %-3d %-3d",
             ptr[0], ptr[1], ptr[2], ptr[3], ptr[4], ptr[5], ptr[6], ptr[7]));
}
