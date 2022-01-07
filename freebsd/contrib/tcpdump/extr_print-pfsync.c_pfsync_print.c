
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct pfsync_subheader {size_t action; int count; } ;
struct pfsync_header {scalar_t__ version; int len; } ;
struct TYPE_6__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
struct TYPE_7__ {int len; int (* print ) (TYPE_1__*,int const*) ;int name; } ;


 int ND_PRINT (TYPE_1__*) ;
 size_t PFSYNC_ACT_EOF ;
 size_t PFSYNC_ACT_MAX ;
 scalar_t__ PFSYNC_VERSION ;
 TYPE_4__* actions ;
 int ntohs (int ) ;
 int stub1 (TYPE_1__*,int const*) ;

__attribute__((used)) static void
pfsync_print(netdissect_options *ndo, struct pfsync_header *hdr,
    const u_char *bp, u_int len)
{
 struct pfsync_subheader *subh;
 int count, plen, i;
 u_int alen;

 plen = ntohs(hdr->len);

 ND_PRINT((ndo, "PFSYNCv%d len %d", hdr->version, plen));

 if (hdr->version != PFSYNC_VERSION)
  return;

 plen -= sizeof(*hdr);

 while (plen > 0) {
  if (len < sizeof(*subh))
   break;

  subh = (struct pfsync_subheader *)bp;
  bp += sizeof(*subh);
  len -= sizeof(*subh);
  plen -= sizeof(*subh);

  if (subh->action >= PFSYNC_ACT_MAX) {
   ND_PRINT((ndo, "\n    act UNKNOWN id %d",
       subh->action));
   return;
  }

  count = ntohs(subh->count);
  ND_PRINT((ndo, "\n    %s count %d", actions[subh->action].name,
      count));
  alen = actions[subh->action].len;

  if (subh->action == PFSYNC_ACT_EOF)
   return;

  if (actions[subh->action].print == ((void*)0)) {
   ND_PRINT((ndo, "\n    unimplemented action %hhu",
       subh->action));
   return;
  }

  for (i = 0; i < count; i++) {
   if (len < alen) {
    len = 0;
    break;
   }

   if (ndo->ndo_vflag)
    actions[subh->action].print(ndo, bp);

   bp += alen;
   len -= alen;
   plen -= alen;
  }
 }

 if (plen > 0) {
  ND_PRINT((ndo, "\n    ..."));
  return;
 }
 if (plen < 0) {
  ND_PRINT((ndo, "\n    invalid header length"));
  return;
 }
 if (len > 0)
  ND_PRINT((ndo, "\n    invalid packet length"));
}
