
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGETS (int,int,char*) ;
 scalar_t__ GoodStr (int ) ;
 int PUTPURE ;
 int Str (int ) ;
 int T_CanDel ;
 int T_DC ;
 int T_dc ;
 int T_dm ;
 int T_ed ;
 int TermH ;
 int flush () ;
 int tgoto (int ,int,int) ;
 int tputs (int ,int,int ) ;
 int xprintf (int ,...) ;

void
DeleteChars(int num)
{
    if (num <= 0)
 return;

    if (!T_CanDel) {



 flush();
 return;
    }

    if (num > TermH) {




 return;
    }

    if (GoodStr(T_DC))
 if ((num > 1) || !GoodStr(T_dc)) {
     (void) tputs(tgoto(Str(T_DC), num, num), num, PUTPURE);
     return;
 }

    if (GoodStr(T_dm))
 (void) tputs(Str(T_dm), 1, PUTPURE);

    if (GoodStr(T_dc))
 while (num--)
     (void) tputs(Str(T_dc), 1, PUTPURE);

    if (GoodStr(T_ed))
 (void) tputs(Str(T_ed), 1, PUTPURE);
}
