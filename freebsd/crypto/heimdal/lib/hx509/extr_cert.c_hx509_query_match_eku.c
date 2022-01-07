
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int match; int * eku; } ;
typedef TYPE_1__ hx509_query ;
typedef int heim_oid ;


 int ENOMEM ;
 int HX509_QUERY_MATCH_EKU ;
 int * calloc (int,int) ;
 int der_copy_oid (int const*,int *) ;
 int der_free_oid (int *) ;
 int free (int *) ;

int
hx509_query_match_eku(hx509_query *q, const heim_oid *eku)
{
    int ret;

    if (eku == ((void*)0)) {
 if (q->eku) {
     der_free_oid(q->eku);
     free(q->eku);
     q->eku = ((void*)0);
 }
 q->match &= ~HX509_QUERY_MATCH_EKU;
    } else {
 if (q->eku) {
     der_free_oid(q->eku);
 } else {
     q->eku = calloc(1, sizeof(*q->eku));
     if (q->eku == ((void*)0))
  return ENOMEM;
 }
 ret = der_copy_oid(eku, q->eku);
 if (ret) {
     free(q->eku);
     q->eku = ((void*)0);
     return ret;
 }
 q->match |= HX509_QUERY_MATCH_EKU;
    }
    return 0;
}
