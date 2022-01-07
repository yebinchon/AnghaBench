
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_get_int64 (scalar_t__*,int const*) ;
 scalar_t__ LONG_MAX ;
 scalar_t__ LONG_MIN ;

long ASN1_INTEGER_get(const ASN1_INTEGER *a)
{
    int i;
    int64_t r;
    if (a == ((void*)0))
        return 0;
    i = ASN1_INTEGER_get_int64(&r, a);
    if (i == 0)
        return -1;
    if (r > LONG_MAX || r < LONG_MIN)
        return -1;
    return (long)r;
}
