
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_oid ;


 int der_free_oid (int *) ;
 int der_heim_oid_cmp (int *,int const*) ;
 int der_parse_heim_oid (char*,char*,int *) ;
 int der_print_heim_oid (int const*,char,char**) ;
 int free (char*) ;
 int printf (char*,char const*,...) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int
test_heim_oid_format_same(const char *str, const heim_oid *oid)
{
    int ret;
    char *p;
    heim_oid o2;

    ret = der_print_heim_oid(oid, ' ', &p);
    if (ret) {
 printf("fail to print oid: %s\n", str);
 return 1;
    }
    ret = strcmp(p, str);
    if (ret) {
 printf("oid %s != formated oid %s\n", str, p);
 free(p);
 return ret;
    }

    ret = der_parse_heim_oid(p, " ", &o2);
    if (ret) {
 printf("failed to parse %s\n", p);
 free(p);
 return ret;
    }
    free(p);
    ret = der_heim_oid_cmp(&o2, oid);
    der_free_oid(&o2);

    return ret;
}
