
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct sunrpc_msg {int rm_xid; } ;
typedef int srcid ;
struct TYPE_6__ {int ndo_nflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef int dstid ;


 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int ) ;
 int NFS_PORT ;
 scalar_t__ nfserr ;
 int nfsreply_print_noaddr (TYPE_1__*,int const*,int ,int const*) ;
 int print_nfsaddr (TYPE_1__*,int const*,char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (char*,char*,int) ;
 int tstr ;

void
nfsreply_print(netdissect_options *ndo,
               register const u_char *bp, u_int length,
               register const u_char *bp2)
{
 register const struct sunrpc_msg *rp;
 char srcid[20], dstid[20];

 nfserr = 0;
 rp = (const struct sunrpc_msg *)bp;

 ND_TCHECK(rp->rm_xid);
 if (!ndo->ndo_nflag) {
  strlcpy(srcid, "nfs", sizeof(srcid));
  snprintf(dstid, sizeof(dstid), "%u",
      EXTRACT_32BITS(&rp->rm_xid));
 } else {
  snprintf(srcid, sizeof(srcid), "%u", NFS_PORT);
  snprintf(dstid, sizeof(dstid), "%u",
      EXTRACT_32BITS(&rp->rm_xid));
 }
 print_nfsaddr(ndo, bp2, srcid, dstid);

 nfsreply_print_noaddr(ndo, bp, length, bp2);
 return;

trunc:
 if (!nfserr)
  ND_PRINT((ndo, "%s", tstr));
}
