
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
typedef int hx509_context ;
typedef TYPE_1__* hx509_ca_tbs ;
struct TYPE_3__ {int notAfter; } ;



int
hx509_ca_tbs_set_notAfter(hx509_context context,
      hx509_ca_tbs tbs,
      time_t t)
{
    tbs->notAfter = t;
    return 0;
}
