
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GoodStr (int ) ;
 int PUTPURE ;
 int Str (int ) ;
 int T_cd ;
 int T_ce ;
 int T_li ;
 int Val (int ) ;
 int tputs (int ,int ,int ) ;

void
ClearToBottom(void)
{
    if (GoodStr(T_cd))
 (void) tputs(Str(T_cd), Val(T_li), PUTPURE);
    else if (GoodStr(T_ce))
 (void) tputs(Str(T_ce), Val(T_li), PUTPURE);
}
