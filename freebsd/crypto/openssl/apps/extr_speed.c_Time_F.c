
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STOP ;
 int alarm (int ) ;
 double app_tminterval (int,int ) ;
 int usertime ;

__attribute__((used)) static double Time_F(int s)
{
    double ret = app_tminterval(s, usertime);
    if (s == STOP)
        alarm(0);
    return ret;
}
