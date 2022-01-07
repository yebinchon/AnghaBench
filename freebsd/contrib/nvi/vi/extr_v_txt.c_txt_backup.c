
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int VI_PRIVATE ;
struct TYPE_8__ {size_t len; size_t sv_len; scalar_t__ owrite; scalar_t__ insert; scalar_t__ lno; int * lb; } ;
typedef int TEXTH ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;


 int CH_CURSOR ;
 int FL_CLR (int ,int ) ;
 int FL_ISSET (int ,int ) ;
 int FL_SET (int ,int ) ;
 int LINE_DELETE ;
 int M_BERR ;
 TYPE_1__* TAILQ_PREV (TYPE_1__*,int ,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int TXT_APPENDEOL ;
 int TXT_REPLAY ;
 int * VIP (int *) ;
 int _texth ;
 int msgq (int *,int ,char*) ;
 int q ;
 int text_free (TYPE_1__*) ;
 scalar_t__ vs_change (int *,scalar_t__,int ) ;

__attribute__((used)) static TEXT *
txt_backup(SCR *sp, TEXTH *tiqh, TEXT *tp, u_int32_t *flagsp)
{
 VI_PRIVATE *vip;
 TEXT *ntp;


 if ((ntp = TAILQ_PREV(tp, _texth, q)) == ((void*)0)) {
  if (!FL_ISSET(*flagsp, TXT_REPLAY))
   msgq(sp, M_BERR,
       "193|Already at the beginning of the insert");
  return (tp);
 }


 ntp->len = ntp->sv_len;


 vip = VIP(sp);
 if (ntp->owrite == 0 && ntp->insert == 0) {
  ntp->lb[ntp->len] = CH_CURSOR;
  ++ntp->insert;
  ++ntp->len;
  FL_SET(*flagsp, TXT_APPENDEOL);
 } else
  FL_CLR(*flagsp, TXT_APPENDEOL);


 TAILQ_REMOVE(tiqh, tp, q);
 text_free(tp);


 if (vs_change(sp, ntp->lno + 1, LINE_DELETE))
  return (((void*)0));


 return (ntp);
}
