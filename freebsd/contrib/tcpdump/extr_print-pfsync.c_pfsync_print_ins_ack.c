
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct pfsync_ins_ack {int creatorid; int id; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 scalar_t__ be64toh (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static void
pfsync_print_ins_ack(netdissect_options *ndo, const void *bp)
{
 const struct pfsync_ins_ack *iack = bp;

 ND_PRINT((ndo, "\n\tid: %016jx creatorid: %08x",
     (uintmax_t)be64toh(iack->id), ntohl(iack->creatorid)));
}
