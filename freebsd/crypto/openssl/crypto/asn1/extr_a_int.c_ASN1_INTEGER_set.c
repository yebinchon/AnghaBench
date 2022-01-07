
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_set_int64 (int *,long) ;

int ASN1_INTEGER_set(ASN1_INTEGER *a, long v)
{
    return ASN1_INTEGER_set_int64(a, v);
}
