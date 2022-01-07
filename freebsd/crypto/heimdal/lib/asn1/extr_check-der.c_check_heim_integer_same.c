
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_integer ;


 int der_free_heim_integer (int *) ;
 scalar_t__ der_heim_integer_cmp (int *,int *) ;
 int der_parse_hex_heim_integer (char const*,int *) ;
 int der_print_hex_heim_integer (int *,char**) ;
 int errx (int,char*,...) ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
check_heim_integer_same(const char *p, const char *norm_p, heim_integer *i)
{
    heim_integer i2;
    char *str;
    int ret;

    ret = der_print_hex_heim_integer(i, &str);
    if (ret)
 errx(1, "der_print_hex_heim_integer: %d", ret);

    if (strcmp(str, norm_p) != 0)
 errx(1, "der_print_hex_heim_integer: %s != %s", str, p);

    ret = der_parse_hex_heim_integer(str, &i2);
    if (ret)
 errx(1, "der_parse_hex_heim_integer: %d", ret);

    if (der_heim_integer_cmp(i, &i2) != 0)
 errx(1, "der_heim_integer_cmp: p %s", p);

    der_free_heim_integer(&i2);
    free(str);

    ret = der_parse_hex_heim_integer(p, &i2);
    if (ret)
 errx(1, "der_parse_hex_heim_integer: %d", ret);

    if (der_heim_integer_cmp(i, &i2) != 0)
 errx(1, "der_heim_integer_cmp: norm");

    der_free_heim_integer(&i2);

    return 0;
}
