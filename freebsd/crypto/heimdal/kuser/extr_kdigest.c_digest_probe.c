
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digest_probe_options {int * realm_string; } ;
typedef int * krb5_realm ;
typedef scalar_t__ krb5_error_code ;


 int context ;
 int errx (int,char*) ;
 int id ;
 scalar_t__ krb5_digest_probe (int ,int *,int ,unsigned int*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int printf (char*,unsigned int) ;

int
digest_probe(struct digest_probe_options *opt,
      int argc, char ** argv)
{
    krb5_error_code ret;
    krb5_realm realm;
    unsigned flags;

    realm = opt->realm_string;

    if (realm == ((void*)0))
 errx(1, "realm missing");

    ret = krb5_digest_probe(context, realm, id, &flags);
    if (ret)
 krb5_err(context, 1, ret, "digest_probe");

    printf("flags: %u\n", flags);

    return 0;
}
