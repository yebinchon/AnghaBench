
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_clr {char* ifname; int creatorid; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int htonl (int ) ;

__attribute__((used)) static void
pfsync_print_clr(netdissect_options *ndo, const void *bp)
{
 const struct pfsync_clr *clr = bp;

 ND_PRINT((ndo, "\n\tcreatorid: %08x", htonl(clr->creatorid)));
 if (clr->ifname[0] != '\0')
  ND_PRINT((ndo, " interface: %s", clr->ifname));
}
