
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {int high; int low; } ;
struct TYPE_5__ {int rj_why; TYPE_1__ rj_vers; int rj_stat; } ;
struct TYPE_6__ {TYPE_2__ rp_reject; int rp_stat; } ;
struct sunrpc_msg {TYPE_3__ rm_reply; } ;
typedef int netdissect_options ;
typedef enum sunrpc_reject_stat { ____Placeholder_sunrpc_reject_stat } sunrpc_reject_stat ;
typedef enum sunrpc_auth_stat { ____Placeholder_sunrpc_auth_stat } sunrpc_auth_stat ;


 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;




 int interp_reply (int *,struct sunrpc_msg const*,int,int,int ) ;
 scalar_t__ nfserr ;
 int sunrpc_auth_str ;
 int tok2str (int ,char*,int) ;
 int tstr ;
 int xid_map_find (struct sunrpc_msg const*,int const*,int*,int*) ;

void
nfsreply_print_noaddr(netdissect_options *ndo,
                      register const u_char *bp, u_int length,
                      register const u_char *bp2)
{
 register const struct sunrpc_msg *rp;
 uint32_t proc, vers, reply_stat;
 enum sunrpc_reject_stat rstat;
 uint32_t rlow;
 uint32_t rhigh;
 enum sunrpc_auth_stat rwhy;

 nfserr = 0;
 rp = (const struct sunrpc_msg *)bp;

 ND_TCHECK(rp->rm_reply.rp_stat);
 reply_stat = EXTRACT_32BITS(&rp->rm_reply.rp_stat);
 switch (reply_stat) {

 case 130:
  ND_PRINT((ndo, "reply ok %u", length));
  if (xid_map_find(rp, bp2, &proc, &vers) >= 0)
   interp_reply(ndo, rp, proc, vers, length);
  break;

 case 129:
  ND_PRINT((ndo, "reply ERR %u: ", length));
  ND_TCHECK(rp->rm_reply.rp_reject.rj_stat);
  rstat = EXTRACT_32BITS(&rp->rm_reply.rp_reject.rj_stat);
  switch (rstat) {

  case 128:
   ND_TCHECK(rp->rm_reply.rp_reject.rj_vers.high);
   rlow = EXTRACT_32BITS(&rp->rm_reply.rp_reject.rj_vers.low);
   rhigh = EXTRACT_32BITS(&rp->rm_reply.rp_reject.rj_vers.high);
   ND_PRINT((ndo, "RPC Version mismatch (%u-%u)", rlow, rhigh));
   break;

  case 131:
   ND_TCHECK(rp->rm_reply.rp_reject.rj_why);
   rwhy = EXTRACT_32BITS(&rp->rm_reply.rp_reject.rj_why);
   ND_PRINT((ndo, "Auth %s", tok2str(sunrpc_auth_str, "Invalid failure code %u", rwhy)));
   break;

  default:
   ND_PRINT((ndo, "Unknown reason for rejecting rpc message %u", (unsigned int)rstat));
   break;
  }
  break;

 default:
  ND_PRINT((ndo, "reply Unknown rpc response code=%u %u", reply_stat, length));
  break;
 }
 return;

trunc:
 if (!nfserr)
  ND_PRINT((ndo, "%s", tstr));
}
