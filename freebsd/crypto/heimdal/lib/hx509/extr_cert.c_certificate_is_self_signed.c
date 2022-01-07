
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_context ;
struct TYPE_4__ {int issuer; int subject; } ;
struct TYPE_5__ {int signatureAlgorithm; TYPE_1__ tbsCertificate; } ;
typedef TYPE_2__ Certificate ;


 int _hx509_name_cmp (int *,int *,int*) ;
 int _hx509_self_signed_valid (int ,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

__attribute__((used)) static int
certificate_is_self_signed(hx509_context context,
      const Certificate *cert,
      int *self_signed)
{
    int ret, diff;
    ret = _hx509_name_cmp(&cert->tbsCertificate.subject,
     &cert->tbsCertificate.issuer, &diff);
    *self_signed = (diff == 0);
    if (ret) {
 hx509_set_error_string(context, 0, ret,
          "Failed to check if self signed");
    } else
 ret = _hx509_self_signed_valid(context, &cert->signatureAlgorithm);

    return ret;
}
