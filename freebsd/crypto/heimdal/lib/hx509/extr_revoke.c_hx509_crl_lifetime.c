
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_crl ;
typedef int hx509_context ;
struct TYPE_3__ {scalar_t__ expire; } ;


 scalar_t__ time (int *) ;

int
hx509_crl_lifetime(hx509_context context, hx509_crl crl, int delta)
{
    crl->expire = time(((void*)0)) + delta;
    return 0;
}
