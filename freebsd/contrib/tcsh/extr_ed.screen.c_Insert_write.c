
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CGETS (int,int,char*) ;
 scalar_t__ GoodStr (int ) ;
 int PUTPURE ;
 int Str (int ) ;
 int T_CanIns ;
 int T_IC ;
 int T_ei ;
 int T_ic ;
 int T_im ;
 int T_ip ;
 int TermH ;
 int flush () ;
 int so_write (int *,int) ;
 int tgoto (int ,int,int) ;
 int tputs (int ,int,int ) ;
 int xprintf (int ,...) ;

void
Insert_write(Char *cp, int num)
{
    if (num <= 0)
 return;
    if (!T_CanIns) {



 flush();
 return;
    }

    if (num > TermH) {




 return;
    }

    if (GoodStr(T_IC))
 if ((num > 1) || !GoodStr(T_ic)) {
     (void) tputs(tgoto(Str(T_IC), num, num), num, PUTPURE);
     so_write(cp, num);
     return;
 }

    if (GoodStr(T_im) && GoodStr(T_ei)) {
 (void) tputs(Str(T_im), 1, PUTPURE);

 so_write(cp, num);

 if (GoodStr(T_ip))
     (void) tputs(Str(T_ip), 1, PUTPURE);

 (void) tputs(Str(T_ei), 1, PUTPURE);
 return;
    }

    do {
 if (GoodStr(T_ic))
     (void) tputs(Str(T_ic), 1, PUTPURE);

 so_write(cp++, 1);

 if (GoodStr(T_ip))
     (void) tputs(Str(T_ip), 1, PUTPURE);

    } while (--num);

}
