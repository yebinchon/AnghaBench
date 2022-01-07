
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PUTPURE ;
 int Str (int ) ;
 int T_mr ;
 int highlighting ;
 int tputs (int ,int,int ) ;

void
StartHighlight(void)
{
    (void) tputs(Str(T_mr), 1, PUTPURE);
    highlighting = 1;
}
