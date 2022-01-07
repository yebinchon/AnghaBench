
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_oid ;


 int der_heim_oid_cmp (int *,int *) ;

__attribute__((used)) static int
test_cmp_oid (void *a, void *b)
{
    return der_heim_oid_cmp((heim_oid *)a, (heim_oid *)b);
}
