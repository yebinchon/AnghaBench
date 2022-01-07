
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int t_dtyp; int t_dflg; int * t_drit; int * t_dlef; struct command* t_dcdr; struct command* t_dcar; int ** t_dcom; struct command* t_dspr; } ;
typedef int Char ;


 int F_APPEND ;
 int F_PIPEIN ;
 int F_PIPEOUT ;
 int F_READ ;
 int F_STDERR ;






 int * STRLparensp ;
 int * STRand ;
 int * STRsemisp ;
 int * STRspLarrow2sp ;
 int * STRspLarrowsp ;
 int * STRspRarrow ;
 int * STRspRarrow2 ;
 int * STRspRparen ;
 int * STRspace ;
 int * STRspand2sp ;
 int * STRspor2sp ;
 int * STRsporsp ;
 int pads (int *) ;

__attribute__((used)) static void
padd(struct command *t)
{
    Char **argp;

    if (t == 0)
 return;
    switch (t->t_dtyp) {

    case 129:
 pads(STRLparensp);
 padd(t->t_dspr);
 pads(STRspRparen);
 break;

    case 132:
 for (argp = t->t_dcom; *argp; argp++) {
     pads(*argp);
     if (argp[1])
  pads(STRspace);
 }
 break;

    case 130:
    case 133:
    case 128:
    case 131:
 padd(t->t_dcar);
 switch (t->t_dtyp) {
 case 130:
     pads(STRspor2sp);
     break;
 case 133:
     pads(STRspand2sp);
     break;
 case 128:
     pads(STRsporsp);
     break;
 case 131:
     pads(STRsemisp);
     break;
 default:
     break;
 }
 padd(t->t_dcdr);
 return;

    default:
 break;
    }
    if ((t->t_dflg & F_PIPEIN) == 0 && t->t_dlef) {
 pads((t->t_dflg & F_READ) ? STRspLarrow2sp : STRspLarrowsp);
 pads(t->t_dlef);
    }
    if ((t->t_dflg & F_PIPEOUT) == 0 && t->t_drit) {
 pads((t->t_dflg & F_APPEND) ? STRspRarrow2 : STRspRarrow);
 if (t->t_dflg & F_STDERR)
     pads(STRand);
 pads(STRspace);
 pads(t->t_drit);
    }
}
