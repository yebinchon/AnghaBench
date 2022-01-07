
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 struct timeval _kdc_now ;
 int gettimeofday (struct timeval*,int *) ;

void
krb5_kdc_update_time(struct timeval *tv)
{
    if (tv == ((void*)0))
 gettimeofday(&_kdc_now, ((void*)0));
    else
 _kdc_now = *tv;
}
