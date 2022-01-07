
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cc_t ;
struct TYPE_7__ {int t_lnextc; int t_rprntc; int t_werasc; int t_suspc; int t_flushc; } ;
struct TYPE_6__ {int t_brkc; int t_stopc; int t_startc; int t_quitc; int t_intrc; int t_eofc; } ;
struct TYPE_5__ {int sg_kill; int sg_erase; } ;
struct TYPE_8__ {TYPE_3__ ltc; TYPE_2__ tc; TYPE_1__ sg; } ;






 int SLC_DEFAULT ;





 int SLC_FLUSHIN ;
 int SLC_FLUSHOUT ;



 int SLC_NOSUPPORT ;



 int SLC_VARIABLE ;


 TYPE_4__ termbuf ;

int
spcset(int func, cc_t *valp, cc_t **valpp)
{
 switch(func) {
 case 138:
  *valp = termbuf.tc.t_eofc;
  *valpp = (cc_t *)&termbuf.tc.t_eofc;
  return(SLC_VARIABLE);
 case 140:
  *valp = termbuf.sg.sg_erase;
  *valpp = (cc_t *)&termbuf.sg.sg_erase;
  return(SLC_VARIABLE);
 case 139:
  *valp = termbuf.sg.sg_kill;
  *valpp = (cc_t *)&termbuf.sg.sg_kill;
  return(SLC_VARIABLE);
 case 134:
  *valp = termbuf.tc.t_intrc;
  *valpp = (cc_t *)&termbuf.tc.t_intrc;
  return(SLC_VARIABLE|SLC_FLUSHIN|SLC_FLUSHOUT);
 case 144:
  *valp = termbuf.tc.t_quitc;
  *valpp = (cc_t *)&termbuf.tc.t_quitc;
  return(SLC_VARIABLE|SLC_FLUSHIN|SLC_FLUSHOUT);
 case 128:
  *valp = termbuf.tc.t_startc;
  *valpp = (cc_t *)&termbuf.tc.t_startc;
  return(SLC_VARIABLE);
 case 129:
  *valp = termbuf.tc.t_stopc;
  *valpp = (cc_t *)&termbuf.tc.t_stopc;
  return(SLC_VARIABLE);
 case 143:
  *valp = termbuf.ltc.t_flushc;
  *valpp = (cc_t *)&termbuf.ltc.t_flushc;
  return(SLC_VARIABLE);
 case 131:
  *valp = termbuf.ltc.t_suspc;
  *valpp = (cc_t *)&termbuf.ltc.t_suspc;
  return(SLC_VARIABLE);
 case 136:
  *valp = termbuf.ltc.t_werasc;
  *valpp = (cc_t *)&termbuf.ltc.t_werasc;
  return(SLC_VARIABLE);
 case 132:
  *valp = termbuf.ltc.t_rprntc;
  *valpp = (cc_t *)&termbuf.ltc.t_rprntc;
  return(SLC_VARIABLE);
 case 133:
  *valp = termbuf.ltc.t_lnextc;
  *valpp = (cc_t *)&termbuf.ltc.t_lnextc;
  return(SLC_VARIABLE);
 case 135:
  *valp = termbuf.tc.t_brkc;
  *valpp = (cc_t *)&termbuf.ltc.t_lnextc;
  return(SLC_VARIABLE);
 case 141:
 case 130:
 case 142:
 case 137:
  *valp = (cc_t)0;
  *valpp = (cc_t *)0;
  return(SLC_DEFAULT);
 default:
  *valp = (cc_t)0;
  *valpp = (cc_t *)0;
  return(SLC_NOSUPPORT);
 }
}
