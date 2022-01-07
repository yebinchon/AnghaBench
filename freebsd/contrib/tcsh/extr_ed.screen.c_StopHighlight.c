
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PUTPURE ;
 int Str (int ) ;
 int T_me ;
 scalar_t__ highlighting ;
 int tputs (int ,int,int ) ;

void
StopHighlight(void)
{
    (void) tputs(Str(T_me), 1, PUTPURE);
    highlighting = 0;
}
