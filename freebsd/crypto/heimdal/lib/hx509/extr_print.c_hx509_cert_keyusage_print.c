
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_cert ;
typedef int buf ;
typedef int KeyUsage ;


 int ENOMEM ;
 int KeyUsage2int (int ) ;
 int _hx509_cert_get_keyusage (int ,int ,int *) ;
 int asn1_KeyUsage_units () ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 char* strdup (char*) ;
 int unparse_flags (int ,int ,char*,int) ;

int
hx509_cert_keyusage_print(hx509_context context, hx509_cert c, char **s)
{
    KeyUsage ku;
    char buf[256];
    int ret;

    *s = ((void*)0);

    ret = _hx509_cert_get_keyusage(context, c, &ku);
    if (ret)
 return ret;
    unparse_flags(KeyUsage2int(ku), asn1_KeyUsage_units(), buf, sizeof(buf));
    *s = strdup(buf);
    if (*s == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }

    return 0;
}
