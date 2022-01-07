
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int u_int ;
struct payload_tipc_pkthdr {int w2; int dest_node; int orig_node; int dest_port; int orig_port; int prev_node; int w1; int w0; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 void* EXTRACT_32BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int ) ;
 int TIPC_BROADCAST_ACK (void*) ;
 int TIPC_CLUSTER (int) ;
 int TIPC_HSIZE (void*) ;
 int TIPC_LINK_ACK (void*) ;
 int TIPC_LINK_SEQ (void*) ;
 int TIPC_MSIZE (void*) ;
 int TIPC_MTYPE (void*) ;
 int TIPC_NODE (int) ;
 int TIPC_USER (void*) ;
 int TIPC_VER (void*) ;
 int TIPC_ZONE (int) ;
 int tipcmtype_values ;
 int tipcuser_values ;
 int tok2str (int ,char*,int) ;
 int tstr ;

__attribute__((used)) static void
print_payload(netdissect_options *ndo, const struct payload_tipc_pkthdr *ap)
{
 uint32_t w0, w1, w2;
 u_int user;
 u_int hsize;
 u_int msize;
 u_int mtype;
 u_int broadcast_ack;
 u_int link_ack;
 u_int link_seq;
 u_int prev_node;
 u_int orig_port;
 u_int dest_port;
 u_int orig_node;
 u_int dest_node;

 ND_TCHECK(ap->dest_port);
 w0 = EXTRACT_32BITS(&ap->w0);
 user = TIPC_USER(w0);
 hsize = TIPC_HSIZE(w0);
 msize = TIPC_MSIZE(w0);
 w1 = EXTRACT_32BITS(&ap->w1);
 mtype = TIPC_MTYPE(w1);
 prev_node = EXTRACT_32BITS(&ap->prev_node);
 orig_port = EXTRACT_32BITS(&ap->orig_port);
 dest_port = EXTRACT_32BITS(&ap->dest_port);
 if (hsize <= 6) {
  ND_PRINT((ndo, "TIPC v%u.0 %u.%u.%u:%u > %u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s",
      TIPC_VER(w0),
      TIPC_ZONE(prev_node), TIPC_CLUSTER(prev_node), TIPC_NODE(prev_node),
      orig_port, dest_port,
      hsize*4, msize,
      tok2str(tipcuser_values, "unknown", user),
      tok2str(tipcmtype_values, "Unknown", mtype)));
 } else {
  ND_TCHECK(ap->dest_node);
  orig_node = EXTRACT_32BITS(&ap->orig_node);
  dest_node = EXTRACT_32BITS(&ap->dest_node);
  ND_PRINT((ndo, "TIPC v%u.0 %u.%u.%u:%u > %u.%u.%u:%u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s",
      TIPC_VER(w0),
      TIPC_ZONE(orig_node), TIPC_CLUSTER(orig_node), TIPC_NODE(orig_node),
      orig_port,
      TIPC_ZONE(dest_node), TIPC_CLUSTER(dest_node), TIPC_NODE(dest_node),
      dest_port,
      hsize*4, msize,
      tok2str(tipcuser_values, "unknown", user),
      tok2str(tipcmtype_values, "Unknown", mtype)));

  if (ndo->ndo_vflag) {
   broadcast_ack = TIPC_BROADCAST_ACK(w1);
   w2 = EXTRACT_32BITS(&ap->w2);
   link_ack = TIPC_LINK_ACK(w2);
   link_seq = TIPC_LINK_SEQ(w2);
   ND_PRINT((ndo, "\n\tPrevious Node %u.%u.%u, Broadcast Ack %u, Link Ack %u, Link Sequence %u",
       TIPC_ZONE(prev_node), TIPC_CLUSTER(prev_node), TIPC_NODE(prev_node),
       broadcast_ack, link_ack, link_seq));
  }
 }
 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
