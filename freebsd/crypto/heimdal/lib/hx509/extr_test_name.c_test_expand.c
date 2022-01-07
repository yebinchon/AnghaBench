
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_name ;
typedef int * hx509_env ;
typedef int hx509_context ;


 int free (char*) ;
 int hx509_env_add (int ,int **,char*,char*) ;
 int hx509_env_free (int **) ;
 int hx509_name_expand (int ,int ,int *) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;
 int hx509_parse_name (int ,char const*,int *) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
test_expand(hx509_context context, const char *name, const char *expected)
{
    hx509_env env = ((void*)0);
    hx509_name n;
    char *s;
    int ret;

    hx509_env_add(context, &env, "uid", "lha");

    ret = hx509_parse_name(context, name, &n);
    if (ret)
 return 1;

    ret = hx509_name_expand(context, n, env);
    hx509_env_free(&env);
    if (ret)
 return 1;

    ret = hx509_name_to_string(n, &s);
    hx509_name_free(&n);
    if (ret)
 return 1;

    ret = strcmp(s, expected) != 0;
    free(s);
    if (ret)
 return 1;

    return 0;
}
