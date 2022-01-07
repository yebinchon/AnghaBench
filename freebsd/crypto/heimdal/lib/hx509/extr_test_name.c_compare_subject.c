
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_name ;
typedef int hx509_cert ;


 int hx509_cert_get_subject (int ,int *) ;
 int hx509_name_cmp (int ,int ) ;
 int hx509_name_free (int *) ;

__attribute__((used)) static int
compare_subject(hx509_cert c1, hx509_cert c2, int *l)
{
    hx509_name n1, n2;
    int ret;

    ret = hx509_cert_get_subject(c1, &n1);
    if (ret) return 1;
    ret = hx509_cert_get_subject(c2, &n2);
    if (ret) return 1;

    *l = hx509_name_cmp(n1, n2);
    hx509_name_free(&n1);
    hx509_name_free(&n2);

    return 0;
}
