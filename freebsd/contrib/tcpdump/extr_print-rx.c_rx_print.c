
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int u_char ;
struct rx_header {scalar_t__ type; int flags; int seq; int serviceId; scalar_t__ securityIndex; int serial; int callNumber; int cid; } ;
struct ip {int dummy; } ;
struct TYPE_21__ {int ndo_vflag; int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;
typedef int int32_t ;
struct TYPE_22__ {int flag; scalar_t__ packetType; int s; } ;




 int EXTRACT_16BITS (int *) ;
 int EXTRACT_32BITS (int *) ;


 int ND_PRINT (TYPE_1__*) ;
 int NUM_RX_FLAGS ;

 int RX_CLIENT_INITIATED ;
 scalar_t__ RX_PACKET_TYPE_ABORT ;
 scalar_t__ RX_PACKET_TYPE_ACK ;
 scalar_t__ RX_PACKET_TYPE_DATA ;


 int bos_print (TYPE_1__*,int const*,int) ;
 int bos_reply_print (TYPE_1__*,int const*,int,int ) ;
 int cb_print (TYPE_1__*,int const*,int) ;
 int cb_reply_print (TYPE_1__*,int const*,int,int ) ;
 int fs_print (TYPE_1__*,int const*,int) ;
 int fs_reply_print (TYPE_1__*,int const*,int,int ) ;
 int kauth_print (TYPE_1__*,int const*,int) ;
 int kauth_reply_print (TYPE_1__*,int const*,int,int ) ;
 int prot_print (TYPE_1__*,int const*,int) ;
 int prot_reply_print (TYPE_1__*,int const*,int,int ) ;
 int rx_ack_print (TYPE_1__*,int const*,int) ;
 scalar_t__ rx_cache_find (struct rx_header const*,struct ip const*,int,int *) ;
 int rx_cache_insert (TYPE_1__*,int const*,struct ip const*,int) ;
 TYPE_7__* rx_flags ;
 int rx_types ;
 int tok2str (int ,char*,scalar_t__) ;
 int vldb_print (TYPE_1__*,int const*,int) ;
 int vldb_reply_print (TYPE_1__*,int const*,int,int ) ;
 int vol_print (TYPE_1__*,int const*,int) ;
 int vol_reply_print (TYPE_1__*,int const*,int,int ) ;

void
rx_print(netdissect_options *ndo,
         register const u_char *bp, int length, int sport, int dport,
         const u_char *bp2)
{
 register const struct rx_header *rxh;
 int i;
 int32_t opcode;

 if (ndo->ndo_snapend - bp < (int)sizeof (struct rx_header)) {
  ND_PRINT((ndo, " [|rx] (%d)", length));
  return;
 }

 rxh = (const struct rx_header *) bp;

 ND_PRINT((ndo, " rx %s", tok2str(rx_types, "type %d", rxh->type)));

 if (ndo->ndo_vflag) {
  int firstflag = 0;

  if (ndo->ndo_vflag > 1)
   ND_PRINT((ndo, " cid %08x call# %d",
          (int) EXTRACT_32BITS(&rxh->cid),
          (int) EXTRACT_32BITS(&rxh->callNumber)));

  ND_PRINT((ndo, " seq %d ser %d",
         (int) EXTRACT_32BITS(&rxh->seq),
         (int) EXTRACT_32BITS(&rxh->serial)));

  if (ndo->ndo_vflag > 2)
   ND_PRINT((ndo, " secindex %d serviceid %hu",
    (int) rxh->securityIndex,
    EXTRACT_16BITS(&rxh->serviceId)));

  if (ndo->ndo_vflag > 1)
   for (i = 0; i < NUM_RX_FLAGS; i++) {
    if (rxh->flags & rx_flags[i].flag &&
        (!rx_flags[i].packetType ||
         rxh->type == rx_flags[i].packetType)) {
     if (!firstflag) {
      firstflag = 1;
      ND_PRINT((ndo, " "));
     } else {
      ND_PRINT((ndo, ","));
     }
     ND_PRINT((ndo, "<%s>", rx_flags[i].s));
    }
   }
 }
 if (rxh->type == RX_PACKET_TYPE_DATA &&
     EXTRACT_32BITS(&rxh->seq) == 1 &&
     rxh->flags & RX_CLIENT_INITIATED) {






  rx_cache_insert(ndo, bp, (const struct ip *) bp2, dport);

  switch (dport) {
   case 132:
    fs_print(ndo, bp, length);
    break;
   case 133:
    cb_print(ndo, bp, length);
    break;
   case 130:
    prot_print(ndo, bp, length);
    break;
   case 129:
    vldb_print(ndo, bp, length);
    break;
   case 131:
    kauth_print(ndo, bp, length);
    break;
   case 128:
    vol_print(ndo, bp, length);
    break;
   case 134:
    bos_print(ndo, bp, length);
    break;
   default:
    ;
  }
 } else if (((rxh->type == RX_PACKET_TYPE_DATA &&
     EXTRACT_32BITS(&rxh->seq) == 1) ||
      rxh->type == RX_PACKET_TYPE_ABORT) &&
     (rxh->flags & RX_CLIENT_INITIATED) == 0 &&
     rx_cache_find(rxh, (const struct ip *) bp2,
     sport, &opcode)) {

  switch (sport) {
   case 132:
    fs_reply_print(ndo, bp, length, opcode);
    break;
   case 133:
    cb_reply_print(ndo, bp, length, opcode);
    break;
   case 130:
    prot_reply_print(ndo, bp, length, opcode);
    break;
   case 129:
    vldb_reply_print(ndo, bp, length, opcode);
    break;
   case 131:
    kauth_reply_print(ndo, bp, length, opcode);
    break;
   case 128:
    vol_reply_print(ndo, bp, length, opcode);
    break;
   case 134:
    bos_reply_print(ndo, bp, length, opcode);
    break;
   default:
    ;
  }







 } else if (rxh->type == RX_PACKET_TYPE_ACK)
  rx_ack_print(ndo, bp, length);


 ND_PRINT((ndo, " (%d)", length));
}
