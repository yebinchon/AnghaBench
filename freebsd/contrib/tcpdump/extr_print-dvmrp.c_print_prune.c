
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int ipaddr_string (int *,int const*) ;
 int unsigned_relts_print (int *,int ) ;

__attribute__((used)) static int
print_prune(netdissect_options *ndo,
            register const u_char *bp)
{
 ND_TCHECK2(bp[0], 12);
 ND_PRINT((ndo, " src %s grp %s", ipaddr_string(ndo, bp), ipaddr_string(ndo, bp + 4)));
 bp += 8;
 ND_PRINT((ndo, " timer "));
 unsigned_relts_print(ndo, EXTRACT_32BITS(bp));
 return (0);
trunc:
 return (-1);
}
