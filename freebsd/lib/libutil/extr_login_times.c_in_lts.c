
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int login_time_t ;


 int in_ltms (int const*,int ,int *) ;
 int localtime (int *) ;

int
in_lts(const login_time_t *ltm, time_t *t)
{

    return (in_ltms(ltm, localtime(t), t));
}
