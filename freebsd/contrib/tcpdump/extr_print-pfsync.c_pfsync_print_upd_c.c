
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
struct pfsync_upd_c {int dst; int src; int creatorid; int id; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int IPPROTO_TCP ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ be64toh (int ) ;
 int ntohl (int ) ;
 int print_src_dst (TYPE_1__*,int *,int *,int ) ;

__attribute__((used)) static void
pfsync_print_upd_c(netdissect_options *ndo, const void *bp)
{
 const struct pfsync_upd_c *u = bp;

 ND_PRINT((ndo, "\n\tid: %016jx creatorid: %08x",
     (uintmax_t)be64toh(u->id), ntohl(u->creatorid)));
 if (ndo->ndo_vflag > 2) {
  ND_PRINT((ndo, "\n\tTCP? :"));
  print_src_dst(ndo, &u->src, &u->dst, IPPROTO_TCP);
 }
}
