
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_2__* hx509_ca_tbs ;
struct TYPE_4__ {int domaincontroller; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;



int
hx509_ca_tbs_set_domaincontroller(hx509_context context,
      hx509_ca_tbs tbs)
{
    tbs->flags.domaincontroller = 1;
    return 0;
}
