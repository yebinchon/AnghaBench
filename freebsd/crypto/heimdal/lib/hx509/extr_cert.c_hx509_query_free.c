
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ expr; struct TYPE_8__* friendlyname; struct TYPE_8__* eku; struct TYPE_8__* issuer_name; struct TYPE_8__* serial; } ;
typedef TYPE_1__ hx509_query ;
typedef int hx509_context ;


 int _hx509_expr_free (scalar_t__) ;
 int der_free_heim_integer (TYPE_1__*) ;
 int der_free_oid (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int free_Name (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
hx509_query_free(hx509_context context, hx509_query *q)
{
    if (q == ((void*)0))
 return;

    if (q->serial) {
 der_free_heim_integer(q->serial);
 free(q->serial);
    }
    if (q->issuer_name) {
 free_Name(q->issuer_name);
 free(q->issuer_name);
    }
    if (q->eku) {
 der_free_oid(q->eku);
 free(q->eku);
    }
    if (q->friendlyname)
 free(q->friendlyname);
    if (q->expr)
 _hx509_expr_free(q->expr);

    memset(q, 0, sizeof(*q));
    free(q);
}
