
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ zoneid_t ;
typedef int uint32_t ;
typedef scalar_t__ uid_t ;
struct TYPE_7__ {TYPE_1__* dtpr_provider; } ;
typedef TYPE_3__ dtrace_probe_t ;
struct TYPE_6__ {int dtpp_flags; scalar_t__ dtpp_uid; scalar_t__ dtpp_zoneid; } ;
struct TYPE_5__ {TYPE_2__ dtpv_priv; } ;


 int DTRACE_PRIV_ALL ;
 int DTRACE_PRIV_KERNEL ;
 int DTRACE_PRIV_OWNER ;
 int DTRACE_PRIV_PROC ;
 int DTRACE_PRIV_USER ;
 int DTRACE_PRIV_ZONEOWNER ;

__attribute__((used)) static int
dtrace_match_priv(const dtrace_probe_t *prp, uint32_t priv, uid_t uid,
    zoneid_t zoneid)
{
 if (priv != DTRACE_PRIV_ALL) {
  uint32_t ppriv = prp->dtpr_provider->dtpv_priv.dtpp_flags;
  uint32_t match = priv & ppriv;




  if ((priv & (DTRACE_PRIV_PROC | DTRACE_PRIV_USER |
      DTRACE_PRIV_KERNEL)) == 0)
   return (0);




  if (match == 0 && ppriv != 0)
   return (0);




  if (((ppriv & ~match) & DTRACE_PRIV_OWNER) != 0 &&
      uid != prp->dtpr_provider->dtpv_priv.dtpp_uid) {
   return (0);
  }





  if (((ppriv & ~match) & DTRACE_PRIV_ZONEOWNER) != 0 &&
      zoneid != prp->dtpr_provider->dtpv_priv.dtpp_zoneid) {
   return (0);
  }
 }

 return (1);
}
