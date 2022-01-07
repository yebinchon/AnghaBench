
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_6__ {scalar_t__ generalTime; } ;
struct TYPE_7__ {TYPE_1__ u; int element; } ;
struct TYPE_10__ {int * crlEntryExtensions; TYPE_2__ revocationDate; int userCertificate; } ;
struct TYPE_9__ {TYPE_3__* revokedCertificates; } ;
struct TYPE_8__ {unsigned int len; TYPE_5__* val; } ;
typedef TYPE_4__ TBSCRLCertList ;


 int ENOMEM ;
 int choice_Time_generalTime ;
 int hx509_cert_get_serialnumber (int ,int *) ;
 int hx509_clear_error_string (int ) ;
 void* realloc (TYPE_5__*,unsigned int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
add_revoked(hx509_context context, void *ctx, hx509_cert cert)
{
    TBSCRLCertList *c = ctx;
    unsigned int num;
    void *ptr;
    int ret;

    num = c->revokedCertificates->len;
    ptr = realloc(c->revokedCertificates->val,
    (num + 1) * sizeof(c->revokedCertificates->val[0]));
    if (ptr == ((void*)0)) {
 hx509_clear_error_string(context);
 return ENOMEM;
    }
    c->revokedCertificates->val = ptr;

    ret = hx509_cert_get_serialnumber(cert,
          &c->revokedCertificates->val[num].userCertificate);
    if (ret) {
 hx509_clear_error_string(context);
 return ret;
    }
    c->revokedCertificates->val[num].revocationDate.element =
 choice_Time_generalTime;
    c->revokedCertificates->val[num].revocationDate.u.generalTime =
 time(((void*)0)) - 3600 * 24;
    c->revokedCertificates->val[num].crlEntryExtensions = ((void*)0);

    c->revokedCertificates->len++;

    return 0;
}
