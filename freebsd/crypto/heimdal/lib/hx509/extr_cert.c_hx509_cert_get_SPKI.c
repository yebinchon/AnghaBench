
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_3__* hx509_cert ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_5__ {int subjectPublicKeyInfo; } ;
struct TYPE_6__ {TYPE_1__ tbsCertificate; } ;
typedef int SubjectPublicKeyInfo ;


 int copy_SubjectPublicKeyInfo (int *,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
hx509_cert_get_SPKI(hx509_context context, hx509_cert p, SubjectPublicKeyInfo *spki)
{
    int ret;

    ret = copy_SubjectPublicKeyInfo(&p->data->tbsCertificate.subjectPublicKeyInfo, spki);
    if (ret)
 hx509_set_error_string(context, 0, ret, "Failed to copy SPKI");
    return ret;
}
