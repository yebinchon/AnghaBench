
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int u_int ;
struct link_conf_tipc_pkthdr {int w5; int ntwrk_id; int prev_node; int dest_domain; int w1; int w0; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 void* EXTRACT_32BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int ) ;
 int TIPC_CLUSTER (int) ;
 int TIPC_HSIZE (void*) ;
 int TIPC_MEDIA_ID (void*) ;
 int TIPC_MSIZE (void*) ;
 int TIPC_MTYPE (void*) ;
 int TIPC_NODE (int) ;
 int TIPC_NODE_SIG (void*) ;
 int TIPC_USER (void*) ;
 int TIPC_VER (void*) ;
 int TIPC_ZONE (int) ;
 int tipc_linkconf_mtype_values ;
 int tipcuser_values ;
 int tok2str (int ,char*,int) ;
 int tstr ;

__attribute__((used)) static void
print_link_conf(netdissect_options *ndo, const struct link_conf_tipc_pkthdr *ap)
{
 uint32_t w0, w1, w5;
 u_int user;
 u_int hsize;
 u_int msize;
 u_int mtype;
 u_int node_sig;
 u_int prev_node;
 u_int dest_domain;
 u_int ntwrk_id;
 u_int media_id;

 ND_TCHECK(ap->prev_node);
 w0 = EXTRACT_32BITS(&ap->w0);
 user = TIPC_USER(w0);
 hsize = TIPC_HSIZE(w0);
 msize = TIPC_MSIZE(w0);
 w1 = EXTRACT_32BITS(&ap->w1);
 mtype = TIPC_MTYPE(w1);
 dest_domain = EXTRACT_32BITS(&ap->dest_domain);
 prev_node = EXTRACT_32BITS(&ap->prev_node);

 ND_PRINT((ndo, "TIPC v%u.0 %u.%u.%u > %u.%u.%u, headerlength %u bytes, MessageSize %u bytes, %s, messageType %s",
     TIPC_VER(w0),
     TIPC_ZONE(prev_node), TIPC_CLUSTER(prev_node), TIPC_NODE(prev_node),
     TIPC_ZONE(dest_domain), TIPC_CLUSTER(dest_domain), TIPC_NODE(dest_domain),
     hsize*4, msize,
     tok2str(tipcuser_values, "unknown", user),
     tok2str(tipc_linkconf_mtype_values, "Unknown", mtype)));
 if (ndo->ndo_vflag) {
  ND_TCHECK(ap->w5);
  node_sig = TIPC_NODE_SIG(w1);
  ntwrk_id = EXTRACT_32BITS(&ap->ntwrk_id);
  w5 = EXTRACT_32BITS(&ap->w5);
  media_id = TIPC_MEDIA_ID(w5);
  ND_PRINT((ndo, "\n\tNodeSignature %u, network_id %u, media_id %u",
      node_sig, ntwrk_id, media_id));
 }
 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
