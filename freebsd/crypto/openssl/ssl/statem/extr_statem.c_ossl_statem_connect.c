
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int state_machine (int *,int ) ;

int ossl_statem_connect(SSL *s)
{
    return state_machine(s, 0);
}
