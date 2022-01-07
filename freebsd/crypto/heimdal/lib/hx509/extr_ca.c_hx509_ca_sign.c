
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_context ;
typedef int hx509_cert ;
typedef int hx509_ca_tbs ;
typedef int ai ;
struct TYPE_5__ {int subject; } ;
struct TYPE_6__ {TYPE_1__ tbsCertificate; } ;
typedef TYPE_2__ Certificate ;
typedef int AuthorityKeyIdentifier ;


 int _hx509_cert_private_key (int ) ;
 TYPE_2__* _hx509_get_cert (int ) ;
 int ca_sign (int ,int ,int ,int *,int *,int *) ;
 int free_AuthorityKeyIdentifier (int *) ;
 int get_AuthorityKeyIdentifier (int ,TYPE_2__ const*,int *) ;
 int memset (int *,int ,int) ;

int
hx509_ca_sign(hx509_context context,
       hx509_ca_tbs tbs,
       hx509_cert signer,
       hx509_cert *certificate)
{
    const Certificate *signer_cert;
    AuthorityKeyIdentifier ai;
    int ret;

    memset(&ai, 0, sizeof(ai));

    signer_cert = _hx509_get_cert(signer);

    ret = get_AuthorityKeyIdentifier(context, signer_cert, &ai);
    if (ret)
 goto out;

    ret = ca_sign(context,
    tbs,
    _hx509_cert_private_key(signer),
    &ai,
    &signer_cert->tbsCertificate.subject,
    certificate);

out:
    free_AuthorityKeyIdentifier(&ai);

    return ret;
}
