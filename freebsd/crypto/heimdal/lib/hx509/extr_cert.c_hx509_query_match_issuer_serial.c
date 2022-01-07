
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int match; int * issuer_name; int * serial; } ;
typedef TYPE_1__ hx509_query ;
typedef int heim_integer ;
typedef int Name ;


 int ENOMEM ;
 int HX509_QUERY_MATCH_ISSUER_NAME ;
 int HX509_QUERY_MATCH_SERIALNUMBER ;
 int copy_Name (int const*,int *) ;
 int der_copy_heim_integer (int const*,int *) ;
 int der_free_heim_integer (int *) ;
 int free (int *) ;
 int free_Name (int *) ;
 void* malloc (int) ;

int
hx509_query_match_issuer_serial(hx509_query *q,
    const Name *issuer,
    const heim_integer *serialNumber)
{
    int ret;
    if (q->serial) {
 der_free_heim_integer(q->serial);
 free(q->serial);
    }
    q->serial = malloc(sizeof(*q->serial));
    if (q->serial == ((void*)0))
 return ENOMEM;
    ret = der_copy_heim_integer(serialNumber, q->serial);
    if (ret) {
 free(q->serial);
 q->serial = ((void*)0);
 return ret;
    }
    if (q->issuer_name) {
 free_Name(q->issuer_name);
 free(q->issuer_name);
    }
    q->issuer_name = malloc(sizeof(*q->issuer_name));
    if (q->issuer_name == ((void*)0))
 return ENOMEM;
    ret = copy_Name(issuer, q->issuer_name);
    if (ret) {
 free(q->issuer_name);
 q->issuer_name = ((void*)0);
 return ret;
    }
    q->match |= HX509_QUERY_MATCH_SERIALNUMBER|HX509_QUERY_MATCH_ISSUER_NAME;
    return 0;
}
