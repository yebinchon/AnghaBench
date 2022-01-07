
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_3__* hx509_cert ;
typedef int heim_bit_string ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_5__ {int subjectUniqueID; } ;
struct TYPE_6__ {TYPE_1__ tbsCertificate; } ;


 int get_x_unique_id (int ,char*,int ,int *) ;

int
hx509_cert_get_subject_unique_id(hx509_context context, hx509_cert p, heim_bit_string *subject)
{
    return get_x_unique_id(context, "subject", p->data->tbsCertificate.subjectUniqueID, subject);
}
