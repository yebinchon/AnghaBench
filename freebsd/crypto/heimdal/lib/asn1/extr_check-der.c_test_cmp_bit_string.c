
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_bit_string ;


 int der_heim_bit_string_cmp (int *,int *) ;

__attribute__((used)) static int
test_cmp_bit_string (void *a, void *b)
{
    return der_heim_bit_string_cmp((heim_bit_string *)a, (heim_bit_string *)b);
}
