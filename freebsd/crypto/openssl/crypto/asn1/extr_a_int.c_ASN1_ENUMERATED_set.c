
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_ENUMERATED ;


 int ASN1_ENUMERATED_set_int64 (int *,long) ;

int ASN1_ENUMERATED_set(ASN1_ENUMERATED *a, long v)
{
    return ASN1_ENUMERATED_set_int64(a, v);
}
