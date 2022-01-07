
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int u_char ;
struct tr_query {int tr_rttlqid; int tr_raddr; int tr_dst; int tr_src; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int *) ;
 scalar_t__ IN_CLASSD (int ) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct tr_query const) ;
 scalar_t__ TR_GETQID (int ) ;
 int TR_GETTTL (int ) ;
 int ipaddr_string (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
print_mresp(netdissect_options *ndo,
            register const u_char *bp, register u_int len)
{
    register const struct tr_query *tr = (const struct tr_query *)(bp + 8);

    ND_TCHECK(*tr);
    if (len < 8 + sizeof (struct tr_query)) {
 ND_PRINT((ndo, " [invalid len %d]", len));
 return;
    }
    ND_PRINT((ndo, "mresp %lu: %s to %s reply-to %s",
        (u_long)TR_GETQID(EXTRACT_32BITS(&tr->tr_rttlqid)),
        ipaddr_string(ndo, &tr->tr_src), ipaddr_string(ndo, &tr->tr_dst),
        ipaddr_string(ndo, &tr->tr_raddr)));
    if (IN_CLASSD(EXTRACT_32BITS(&tr->tr_raddr)))
        ND_PRINT((ndo, " with-ttl %d", TR_GETTTL(EXTRACT_32BITS(&tr->tr_rttlqid))));
    return;
trunc:
    ND_PRINT((ndo, "%s", tstr));
}
