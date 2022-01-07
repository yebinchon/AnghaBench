
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_16__ ;


struct TYPE_23__ {scalar_t__ cs_lno; scalar_t__ cs_cno; int cs_ch; scalar_t__ cs_flags; } ;
typedef TYPE_1__ VCS ;
struct TYPE_26__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_25__ {scalar_t__ lno; scalar_t__ cno; int * gp; } ;
struct TYPE_24__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_22__ {int mcs; } ;
typedef TYPE_2__ TEXT ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ MARK ;
typedef int GS ;


 scalar_t__ CS_EOF ;
 scalar_t__ CS_SOF ;
 int EC_TIMEOUT ;
 int KEY_NAME (TYPE_3__*,int) ;
 int M_BERR ;
 int O_MATCHTIME ;
 int O_VAL (TYPE_3__*,int ) ;
 int P_TOP ;
 int* STRCHR (int ,int) ;
 int UPDATE_POSITION (TYPE_3__*,TYPE_2__*) ;
 TYPE_16__* VIP (TYPE_3__*) ;
 scalar_t__ cs_init (TYPE_3__*,TYPE_1__*) ;
 scalar_t__ cs_prev (TYPE_3__*,TYPE_1__*) ;
 int msgq (TYPE_3__*,int ,char*,int ) ;
 int v_event_get (TYPE_3__*,int *,int,int ) ;
 scalar_t__ vs_refresh (TYPE_3__*,int) ;
 scalar_t__ vs_sm_position (TYPE_3__*,TYPE_4__*,int ,int ) ;

__attribute__((used)) static int
txt_showmatch(SCR *sp, TEXT *tp)
{
 GS *gp;
 VCS cs;
 MARK m;
 int cnt, endc, startc;

 gp = sp->gp;





 UPDATE_POSITION(sp, tp);
 if (vs_refresh(sp, 1))
  return (1);





 if (vs_sm_position(sp, &m, 0, P_TOP))
  return (1);


 cs.cs_lno = tp->lno;
 cs.cs_cno = tp->cno - 1;
 if (cs_init(sp, &cs))
  return (1);
 startc = STRCHR(VIP(sp)->mcs, endc = cs.cs_ch)[-1];


 for (cnt = 1;;) {
  if (cs_prev(sp, &cs))
   return (1);
  if (cs.cs_flags != 0) {
   if (cs.cs_flags == CS_EOF || cs.cs_flags == CS_SOF) {
    msgq(sp, M_BERR,
        "Unmatched %s", KEY_NAME(sp, endc));
    return (0);
   }
   continue;
  }
  if (cs.cs_ch == endc)
   ++cnt;
  else if (cs.cs_ch == startc && --cnt == 0)
   break;
 }


 if (cs.cs_lno < m.lno || (cs.cs_lno == m.lno && cs.cs_cno < m.cno))
  return (0);
 sp->lno = cs.cs_lno;
 sp->cno = cs.cs_cno;
 if (vs_refresh(sp, 1))
  return (1);


 return (v_event_get(sp,
     ((void*)0), O_VAL(sp, O_MATCHTIME) * 100, EC_TIMEOUT));
}
