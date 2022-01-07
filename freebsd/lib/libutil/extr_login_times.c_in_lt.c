
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int login_time_t ;


 int in_ltm (int const*,int ,int *) ;
 int localtime (int *) ;

int
in_lt(const login_time_t *ltm, time_t *t)
{

    return (in_ltm(ltm, localtime(t), t));
}
