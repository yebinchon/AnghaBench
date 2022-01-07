
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oidstr ;
typedef int X509 ;
typedef int BIO ;


 int ASN1_OBJECT ;
 int BIO_printf (int *,char*,...) ;
 int BIO_puts (int *,char*) ;
 int BIO_write (int *,char*,int) ;
 int OBJ_obj2txt (char*,int,int ,int ) ;
 int STACK_OF (int ) ;
 unsigned char* X509_alias_get0 (int *,int *) ;
 int * X509_get0_reject_objects (int *) ;
 int X509_get0_trust_objects (int *) ;
 unsigned char* X509_keyid_get0 (int *,int*) ;
 scalar_t__ X509_trusted (int *) ;
 int * reject ;
 int sk_ASN1_OBJECT_num (int) ;
 int sk_ASN1_OBJECT_value (int,int) ;
 int trust ;

int X509_aux_print(BIO *out, X509 *x, int indent)
{
    char oidstr[80], first;
    STACK_OF(ASN1_OBJECT) *trust, *reject;
    const unsigned char *alias, *keyid;
    int keyidlen;
    int i;
    if (X509_trusted(x) == 0)
        return 1;
    trust = X509_get0_trust_objects(x);
    reject = X509_get0_reject_objects(x);
    if (trust) {
        first = 1;
        BIO_printf(out, "%*sTrusted Uses:\n%*s", indent, "", indent + 2, "");
        for (i = 0; i < sk_ASN1_OBJECT_num(trust); i++) {
            if (!first)
                BIO_puts(out, ", ");
            else
                first = 0;
            OBJ_obj2txt(oidstr, sizeof(oidstr),
                        sk_ASN1_OBJECT_value(trust, i), 0);
            BIO_puts(out, oidstr);
        }
        BIO_puts(out, "\n");
    } else
        BIO_printf(out, "%*sNo Trusted Uses.\n", indent, "");
    if (reject) {
        first = 1;
        BIO_printf(out, "%*sRejected Uses:\n%*s", indent, "", indent + 2, "");
        for (i = 0; i < sk_ASN1_OBJECT_num(reject); i++) {
            if (!first)
                BIO_puts(out, ", ");
            else
                first = 0;
            OBJ_obj2txt(oidstr, sizeof(oidstr),
                        sk_ASN1_OBJECT_value(reject, i), 0);
            BIO_puts(out, oidstr);
        }
        BIO_puts(out, "\n");
    } else
        BIO_printf(out, "%*sNo Rejected Uses.\n", indent, "");
    alias = X509_alias_get0(x, ((void*)0));
    if (alias)
        BIO_printf(out, "%*sAlias: %s\n", indent, "", alias);
    keyid = X509_keyid_get0(x, &keyidlen);
    if (keyid) {
        BIO_printf(out, "%*sKey Id: ", indent, "");
        for (i = 0; i < keyidlen; i++)
            BIO_printf(out, "%s%02X", i ? ":" : "", keyid[i]);
        BIO_write(out, "\n", 1);
    }
    return 1;
}
