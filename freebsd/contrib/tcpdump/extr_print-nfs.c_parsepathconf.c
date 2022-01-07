
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct nfsv3_pathconf {int pc_casepreserving; int pc_caseinsensitive; int pc_chownrestricted; int pc_notrunc; int pc_namemax; int pc_linkmax; } ;
struct TYPE_6__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EXTRACT_32BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct nfsv3_pathconf const) ;
 int * parse_post_op_attr (TYPE_1__*,int const*,scalar_t__) ;
 int * parsestatus (TYPE_1__*,int const*,int*) ;

__attribute__((used)) static int
parsepathconf(netdissect_options *ndo,
              const uint32_t *dp)
{
 int er;
 const struct nfsv3_pathconf *spp;

 if (!(dp = parsestatus(ndo, dp, &er)))
  return (0);
 if (ndo->ndo_vflag)
  ND_PRINT((ndo, " POST:"));
 if (!(dp = parse_post_op_attr(ndo, dp, ndo->ndo_vflag)))
  return (0);
 if (er)
  return (1);

 spp = (const struct nfsv3_pathconf *)dp;
 ND_TCHECK(*spp);

 ND_PRINT((ndo, " linkmax %u namemax %u %s %s %s %s",
        EXTRACT_32BITS(&spp->pc_linkmax),
        EXTRACT_32BITS(&spp->pc_namemax),
        EXTRACT_32BITS(&spp->pc_notrunc) ? "notrunc" : "",
        EXTRACT_32BITS(&spp->pc_chownrestricted) ? "chownres" : "",
        EXTRACT_32BITS(&spp->pc_caseinsensitive) ? "igncase" : "",
        EXTRACT_32BITS(&spp->pc_casepreserving) ? "keepcase" : ""));
 return (1);
trunc:
 return (0);
}
