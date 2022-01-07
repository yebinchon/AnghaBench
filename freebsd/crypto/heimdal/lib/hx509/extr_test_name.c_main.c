
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;


 int errx (int,char*,int) ;
 int hx509_context_free (int *) ;
 int hx509_context_init (int *) ;
 scalar_t__ test_compare (int ) ;
 scalar_t__ test_expand (int ,char*,char*) ;
 scalar_t__ test_name (int ,char*) ;
 scalar_t__ test_name_fail (int ,char*) ;

int
main(int argc, char **argv)
{
    hx509_context context;
    int ret = 0;

    ret = hx509_context_init(&context);
    if (ret)
 errx(1, "hx509_context_init failed with %d", ret);

    ret += test_name(context, "CN=foo,C=SE");
    ret += test_name(context, "CN=foo,CN=kaka,CN=FOO,DC=ad1,C=SE");
    ret += test_name(context, "1.2.3.4=foo,C=SE");
    ret += test_name_fail(context, "=");
    ret += test_name_fail(context, "CN=foo,=foo");
    ret += test_name_fail(context, "CN=foo,really-unknown-type=foo");

    ret += test_expand(context, "UID=${uid},C=SE", "UID=lha,C=SE");
    ret += test_expand(context, "UID=foo${uid},C=SE", "UID=foolha,C=SE");
    ret += test_expand(context, "UID=${uid}bar,C=SE", "UID=lhabar,C=SE");
    ret += test_expand(context, "UID=f${uid}b,C=SE", "UID=flhab,C=SE");
    ret += test_expand(context, "UID=${uid}${uid},C=SE", "UID=lhalha,C=SE");
    ret += test_expand(context, "UID=${uid}{uid},C=SE", "UID=lha{uid},C=SE");

    ret += test_compare(context);

    hx509_context_free(&context);

    return ret;
}
