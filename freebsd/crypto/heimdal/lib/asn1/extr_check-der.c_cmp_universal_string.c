
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_universal_string ;


 int der_heim_universal_string_cmp (int *,int *) ;

__attribute__((used)) static int
cmp_universal_string (void *a, void *b)
{
    heim_universal_string *oa = (heim_universal_string *)a;
    heim_universal_string *ob = (heim_universal_string *)b;

    return der_heim_universal_string_cmp(oa, ob);
}
