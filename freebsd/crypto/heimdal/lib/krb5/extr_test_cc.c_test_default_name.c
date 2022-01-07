
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;


 char* TEST_CC_NAME ;
 char* estrdup (char const*) ;
 int free (char*) ;
 char* krb5_cc_default_name (int ) ;
 int krb5_cc_set_default_name (int ,char const*) ;
 int krb5_errx (int ,int,char*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static void
test_default_name(krb5_context context)
{
    krb5_error_code ret;
    const char *p, *test_cc_name = TEST_CC_NAME;
    char *p1, *p2, *p3;

    p = krb5_cc_default_name(context);
    if (p == ((void*)0))
 krb5_errx (context, 1, "krb5_cc_default_name 1 failed");
    p1 = estrdup(p);

    ret = krb5_cc_set_default_name(context, ((void*)0));
    if (p == ((void*)0))
 krb5_errx (context, 1, "krb5_cc_set_default_name failed");

    p = krb5_cc_default_name(context);
    if (p == ((void*)0))
 krb5_errx (context, 1, "krb5_cc_default_name 2 failed");
    p2 = estrdup(p);

    if (strcmp(p1, p2) != 0)
 krb5_errx (context, 1, "krb5_cc_default_name no longer same");

    ret = krb5_cc_set_default_name(context, test_cc_name);
    if (p == ((void*)0))
 krb5_errx (context, 1, "krb5_cc_set_default_name 1 failed");

    p = krb5_cc_default_name(context);
    if (p == ((void*)0))
 krb5_errx (context, 1, "krb5_cc_default_name 2 failed");
    p3 = estrdup(p);





    if (strcmp(p3, test_cc_name) != 0)
 krb5_errx (context, 1, "krb5_cc_set_default_name 1 failed");


    free(p1);
    free(p2);
    free(p3);
}
