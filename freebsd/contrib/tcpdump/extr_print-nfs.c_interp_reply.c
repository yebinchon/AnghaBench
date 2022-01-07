
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sunrpc_msg {int dummy; } ;
struct TYPE_19__ {int ndo_vflag; int ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EXTRACT_32BITS (scalar_t__ const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (scalar_t__ const) ;
 scalar_t__ NFS_NPROCS ;
 scalar_t__ NFS_VER3 ;
 int nfserr ;
 int nfsproc_str ;
 scalar_t__* nfsv3_procid ;
 int nfsv3_writemodes ;
 scalar_t__* parse_post_op_attr (TYPE_1__*,scalar_t__ const*,int) ;
 scalar_t__* parse_wcc_data (TYPE_1__*,scalar_t__ const*,int) ;
 int parseattrstat (TYPE_1__*,scalar_t__ const*,int,int) ;
 int * parsecreateopres (TYPE_1__*,scalar_t__ const*,int) ;
 int parsediropres (TYPE_1__*,scalar_t__ const*) ;
 scalar_t__* parsefh (TYPE_1__*,scalar_t__ const*,int) ;
 int parsefsinfo (TYPE_1__*,scalar_t__ const*) ;
 int parselinkres (TYPE_1__*,scalar_t__ const*,int) ;
 int parsepathconf (TYPE_1__*,scalar_t__ const*) ;
 int parserddires (TYPE_1__*,scalar_t__ const*) ;
 scalar_t__* parserep (TYPE_1__*,struct sunrpc_msg const*,int) ;
 int parsestatfs (TYPE_1__*,scalar_t__ const*,int) ;
 scalar_t__* parsestatus (TYPE_1__*,scalar_t__ const*,int*) ;
 int parsev3rddirres (TYPE_1__*,scalar_t__ const*,int) ;
 int parsewccres (TYPE_1__*,scalar_t__ const*,int) ;
 int tok2str (int ,char*,scalar_t__) ;
 int tstr ;

__attribute__((used)) static void
interp_reply(netdissect_options *ndo,
             const struct sunrpc_msg *rp, uint32_t proc, uint32_t vers, int length)
{
 register const uint32_t *dp;
 register int v3;
 int er;

 v3 = (vers == NFS_VER3);

 if (!v3 && proc < NFS_NPROCS)
  proc = nfsv3_procid[proc];

 ND_PRINT((ndo, " %s", tok2str(nfsproc_str, "proc-%u", proc)));
 switch (proc) {

 case 143:
  dp = parserep(ndo, rp, length);
  if (dp != ((void*)0) && parseattrstat(ndo, dp, !ndo->ndo_qflag, v3) != 0)
   return;
  break;

 case 130:
  if (!(dp = parserep(ndo, rp, length)))
   return;
  if (v3) {
   if (parsewccres(ndo, dp, ndo->ndo_vflag))
    return;
  } else {
   if (parseattrstat(ndo, dp, !ndo->ndo_qflag, 0) != 0)
    return;
  }
  break;

 case 141:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (!(dp = parsestatus(ndo, dp, &er)))
    break;
   if (er) {
    if (ndo->ndo_vflag > 1) {
     ND_PRINT((ndo, " post dattr:"));
     dp = parse_post_op_attr(ndo, dp, ndo->ndo_vflag);
    }
   } else {
    if (!(dp = parsefh(ndo, dp, v3)))
     break;
    if ((dp = parse_post_op_attr(ndo, dp, ndo->ndo_vflag)) &&
        ndo->ndo_vflag > 1) {
     ND_PRINT((ndo, " post dattr:"));
     dp = parse_post_op_attr(ndo, dp, ndo->ndo_vflag);
    }
   }
   if (dp)
    return;
  } else {
   if (parsediropres(ndo, dp) != 0)
    return;
  }
  break;

 case 148:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (!(dp = parsestatus(ndo, dp, &er)))
   break;
  if (ndo->ndo_vflag)
   ND_PRINT((ndo, " attr:"));
  if (!(dp = parse_post_op_attr(ndo, dp, ndo->ndo_vflag)))
   break;
  if (!er) {
   ND_TCHECK(dp[0]);
   ND_PRINT((ndo, " c %04x", EXTRACT_32BITS(&dp[0])));
  }
  return;

 case 134:
  dp = parserep(ndo, rp, length);
  if (dp != ((void*)0) && parselinkres(ndo, dp, v3) != 0)
   return;
  break;

 case 137:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (!(dp = parsestatus(ndo, dp, &er)))
    break;
   if (!(dp = parse_post_op_attr(ndo, dp, ndo->ndo_vflag)))
    break;
   if (er)
    return;
   if (ndo->ndo_vflag) {
    ND_TCHECK(dp[1]);
    ND_PRINT((ndo, " %u bytes", EXTRACT_32BITS(&dp[0])));
    if (EXTRACT_32BITS(&dp[1]))
     ND_PRINT((ndo, " EOF"));
   }
   return;
  } else {
   if (parseattrstat(ndo, dp, ndo->ndo_vflag, 0) != 0)
    return;
  }
  break;

 case 128:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (!(dp = parsestatus(ndo, dp, &er)))
    break;
   if (!(dp = parse_wcc_data(ndo, dp, ndo->ndo_vflag)))
    break;
   if (er)
    return;
   if (ndo->ndo_vflag) {
    ND_TCHECK(dp[0]);
    ND_PRINT((ndo, " %u bytes", EXTRACT_32BITS(&dp[0])));
    if (ndo->ndo_vflag > 1) {
     ND_TCHECK(dp[1]);
     ND_PRINT((ndo, " <%s>",
      tok2str(nfsv3_writemodes,
       ((void*)0), EXTRACT_32BITS(&dp[1]))));
    }
    return;
   }
  } else {
   if (parseattrstat(ndo, dp, ndo->ndo_vflag, v3) != 0)
    return;
  }
  break;

 case 146:
 case 140:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (parsecreateopres(ndo, dp, ndo->ndo_vflag) != ((void*)0))
    return;
  } else {
   if (parsediropres(ndo, dp) != 0)
    return;
  }
  break;

 case 129:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (parsecreateopres(ndo, dp, ndo->ndo_vflag) != ((void*)0))
    return;
  } else {
   if (parsestatus(ndo, dp, &er) != ((void*)0))
    return;
  }
  break;

 case 139:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (parsecreateopres(ndo, dp, ndo->ndo_vflag) != ((void*)0))
   return;
  break;

 case 133:
 case 131:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (parsewccres(ndo, dp, ndo->ndo_vflag))
    return;
  } else {
   if (parsestatus(ndo, dp, &er) != ((void*)0))
    return;
  }
  break;

 case 132:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (!(dp = parsestatus(ndo, dp, &er)))
    break;
   if (ndo->ndo_vflag) {
    ND_PRINT((ndo, " from:"));
    if (!(dp = parse_wcc_data(ndo, dp, ndo->ndo_vflag)))
     break;
    ND_PRINT((ndo, " to:"));
    if (!(dp = parse_wcc_data(ndo, dp, ndo->ndo_vflag)))
     break;
   }
   return;
  } else {
   if (parsestatus(ndo, dp, &er) != ((void*)0))
    return;
  }
  break;

 case 142:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (!(dp = parsestatus(ndo, dp, &er)))
    break;
   if (ndo->ndo_vflag) {
    ND_PRINT((ndo, " file POST:"));
    if (!(dp = parse_post_op_attr(ndo, dp, ndo->ndo_vflag)))
     break;
    ND_PRINT((ndo, " dir:"));
    if (!(dp = parse_wcc_data(ndo, dp, ndo->ndo_vflag)))
     break;
    return;
   }
  } else {
   if (parsestatus(ndo, dp, &er) != ((void*)0))
    return;
  }
  break;

 case 136:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (v3) {
   if (parsev3rddirres(ndo, dp, ndo->ndo_vflag))
    return;
  } else {
   if (parserddires(ndo, dp) != 0)
    return;
  }
  break;

 case 135:
  if (!(dp = parserep(ndo, rp, length)))
   break;
  if (parsev3rddirres(ndo, dp, ndo->ndo_vflag))
   return;
  break;

 case 144:
  dp = parserep(ndo, rp, length);
  if (dp != ((void*)0) && parsestatfs(ndo, dp, v3) != 0)
   return;
  break;

 case 145:
  dp = parserep(ndo, rp, length);
  if (dp != ((void*)0) && parsefsinfo(ndo, dp) != 0)
   return;
  break;

 case 138:
  dp = parserep(ndo, rp, length);
  if (dp != ((void*)0) && parsepathconf(ndo, dp) != 0)
   return;
  break;

 case 147:
  dp = parserep(ndo, rp, length);
  if (dp != ((void*)0) && parsewccres(ndo, dp, ndo->ndo_vflag) != 0)
   return;
  break;

 default:
  return;
 }
trunc:
 if (!nfserr)
  ND_PRINT((ndo, "%s", tstr));
}
