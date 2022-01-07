
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_name ;
typedef int hx509_context ;


 int free (char*) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;
 int hx509_parse_name (int ,char const*,int *) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
test_name(hx509_context context, const char *name)
{
    hx509_name n;
    char *s;
    int ret;

    ret = hx509_parse_name(context, name, &n);
    if (ret)
 return 1;

    ret = hx509_name_to_string(n, &s);
    if (ret)
 return 1;

    if (strcmp(s, name) != 0)
 return 1;

    hx509_name_free(&n);
    free(s);

    return 0;
}
