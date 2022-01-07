
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_name ;
typedef int hx509_context ;


 scalar_t__ HX509_NAME_MALFORMED ;
 int hx509_name_free (int *) ;
 scalar_t__ hx509_parse_name (int ,char const*,int *) ;

__attribute__((used)) static int
test_name_fail(hx509_context context, const char *name)
{
    hx509_name n;

    if (hx509_parse_name(context, name, &n) == HX509_NAME_MALFORMED)
 return 0;
    hx509_name_free(&n);
    return 1;
}
