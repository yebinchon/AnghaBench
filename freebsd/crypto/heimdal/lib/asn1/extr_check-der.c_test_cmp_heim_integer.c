
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_integer ;


 int der_heim_integer_cmp (int *,int *) ;

__attribute__((used)) static int
test_cmp_heim_integer (void *a, void *b)
{
    return der_heim_integer_cmp((heim_integer *)a, (heim_integer *)b);
}
