
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_1__* hx509_ca_tbs ;
typedef int heim_bit_string ;
struct TYPE_3__ {int issuerUniqueID; int subjectUniqueID; } ;


 int der_copy_bit_string (int const*,int *) ;
 int der_free_bit_string (int *) ;

int
hx509_ca_tbs_set_unique(hx509_context context,
   hx509_ca_tbs tbs,
   const heim_bit_string *subjectUniqueID,
   const heim_bit_string *issuerUniqueID)
{
    int ret;

    der_free_bit_string(&tbs->subjectUniqueID);
    der_free_bit_string(&tbs->issuerUniqueID);

    if (subjectUniqueID) {
 ret = der_copy_bit_string(subjectUniqueID, &tbs->subjectUniqueID);
 if (ret)
     return ret;
    }

    if (issuerUniqueID) {
 ret = der_copy_bit_string(issuerUniqueID, &tbs->issuerUniqueID);
 if (ret)
     return ret;
    }

    return 0;
}
