
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct hsrp {scalar_t__ hsrp_version; scalar_t__ hsrp_op_code; scalar_t__ hsrp_state; scalar_t__ hsrp_group; scalar_t__ hsrp_reserved; scalar_t__ hsrp_virtaddr; int hsrp_authdata; int hsrp_priority; int hsrp_holdtime; int hsrp_hellotime; } ;
struct TYPE_7__ {int ndo_snapend; scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (scalar_t__) ;
 scalar_t__ fn_printn (TYPE_1__*,int ,int,int ) ;
 int ipaddr_string (TYPE_1__*,scalar_t__*) ;
 int op_code_str ;
 int states ;
 int tok2str (int ,char*,scalar_t__) ;
 int tok2strary (int ,char*,scalar_t__) ;
 int unsigned_relts_print (TYPE_1__*,int ) ;

void
hsrp_print(netdissect_options *ndo, register const uint8_t *bp, register u_int len)
{
 const struct hsrp *hp = (const struct hsrp *) bp;

 ND_TCHECK(hp->hsrp_version);
 ND_PRINT((ndo, "HSRPv%d", hp->hsrp_version));
 if (hp->hsrp_version != 0)
  return;
 ND_TCHECK(hp->hsrp_op_code);
 ND_PRINT((ndo, "-"));
 ND_PRINT((ndo, "%s ", tok2strary(op_code_str, "unknown (%d)", hp->hsrp_op_code)));
 ND_PRINT((ndo, "%d: ", len));
 ND_TCHECK(hp->hsrp_state);
 ND_PRINT((ndo, "state=%s ", tok2str(states, "Unknown (%d)", hp->hsrp_state)));
 ND_TCHECK(hp->hsrp_group);
 ND_PRINT((ndo, "group=%d ", hp->hsrp_group));
 ND_TCHECK(hp->hsrp_reserved);
 if (hp->hsrp_reserved != 0) {
  ND_PRINT((ndo, "[reserved=%d!] ", hp->hsrp_reserved));
 }
 ND_TCHECK(hp->hsrp_virtaddr);
 ND_PRINT((ndo, "addr=%s", ipaddr_string(ndo, &hp->hsrp_virtaddr)));
 if (ndo->ndo_vflag) {
  ND_PRINT((ndo, " hellotime="));
  unsigned_relts_print(ndo, hp->hsrp_hellotime);
  ND_PRINT((ndo, " holdtime="));
  unsigned_relts_print(ndo, hp->hsrp_holdtime);
  ND_PRINT((ndo, " priority=%d", hp->hsrp_priority));
  ND_PRINT((ndo, " auth=\""));
  if (fn_printn(ndo, hp->hsrp_authdata, sizeof(hp->hsrp_authdata),
      ndo->ndo_snapend)) {
   ND_PRINT((ndo, "\""));
   goto trunc;
  }
  ND_PRINT((ndo, "\""));
 }
 return;
trunc:
 ND_PRINT((ndo, "[|hsrp]"));
}
