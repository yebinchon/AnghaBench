
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_name ;
typedef int hx509_context ;
typedef TYPE_1__* hx509_ca_tbs ;
struct TYPE_3__ {scalar_t__ subject; } ;


 int hx509_name_copy (int ,int ,scalar_t__*) ;
 int hx509_name_free (scalar_t__*) ;

int
hx509_ca_tbs_set_subject(hx509_context context,
    hx509_ca_tbs tbs,
    hx509_name subject)
{
    if (tbs->subject)
 hx509_name_free(&tbs->subject);
    return hx509_name_copy(context, subject, &tbs->subject);
}
