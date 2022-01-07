
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_2__* hx509_ca_tbs ;
typedef int heim_integer ;
struct TYPE_4__ {int serial; } ;
struct TYPE_5__ {TYPE_1__ flags; int serial; } ;


 int der_copy_heim_integer (int const*,int *) ;
 int der_free_heim_integer (int *) ;

int
hx509_ca_tbs_set_serialnumber(hx509_context context,
         hx509_ca_tbs tbs,
         const heim_integer *serialNumber)
{
    int ret;
    der_free_heim_integer(&tbs->serial);
    ret = der_copy_heim_integer(serialNumber, &tbs->serial);
    tbs->flags.serial = !ret;
    return ret;
}
