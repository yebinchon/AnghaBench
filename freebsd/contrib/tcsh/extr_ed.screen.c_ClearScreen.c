
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GoodStr (int ) ;
 int PUTPURE ;
 int Str (int ) ;
 int T_cd ;
 int T_cl ;
 int T_ho ;
 int T_li ;
 int Val (int ) ;
 int putraw (char) ;
 int tputs (int ,int ,int ) ;

void
ClearScreen(void)
{
    if (GoodStr(T_cl))

 (void) tputs(Str(T_cl), Val(T_li), PUTPURE);
    else if (GoodStr(T_ho) && GoodStr(T_cd)) {
 (void) tputs(Str(T_ho), Val(T_li), PUTPURE);

 (void) tputs(Str(T_cd), Val(T_li), PUTPURE);
    }
    else {
 (void) putraw('\r');
 (void) putraw('\n');
    }
}
