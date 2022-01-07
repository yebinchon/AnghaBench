
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_bmp_string ;


 int der_heim_bmp_string_cmp (int *,int *) ;

__attribute__((used)) static int
cmp_bmp_string (void *a, void *b)
{
    heim_bmp_string *oa = (heim_bmp_string *)a;
    heim_bmp_string *ob = (heim_bmp_string *)b;

    return der_heim_bmp_string_cmp(oa, ob);
}
