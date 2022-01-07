
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct pfsync_upd_req {int creatorid; int id; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 scalar_t__ be64toh (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static void
pfsync_print_upd_req(netdissect_options *ndo, const void *bp)
{
 const struct pfsync_upd_req *ur = bp;

 ND_PRINT((ndo, "\n\tid: %016jx creatorid: %08x",
     (uintmax_t)be64toh(ur->id), ntohl(ur->creatorid)));
}
