
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * krb5_keytab ;
typedef scalar_t__ krb5_error_code ;


 int context ;
 scalar_t__ krb5_kt_destroy (int ,int *) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int * ktutil_open_keytab () ;

int
kt_destroy (void *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_keytab keytab;

    if((keytab = ktutil_open_keytab()) == ((void*)0))
 return 1;

    ret = krb5_kt_destroy (context, keytab);
    if (ret) {
 krb5_warn (context, ret, "destroy keytab failed");
 return 1;
    }

    return 0;
}
