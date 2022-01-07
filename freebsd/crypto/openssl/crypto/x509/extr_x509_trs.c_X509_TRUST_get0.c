
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_TRUST ;


 scalar_t__ X509_TRUST_COUNT ;
 int * sk_X509_TRUST_value (int ,scalar_t__) ;
 int * trstandard ;
 int trtable ;

X509_TRUST *X509_TRUST_get0(int idx)
{
    if (idx < 0)
        return ((void*)0);
    if (idx < (int)X509_TRUST_COUNT)
        return trstandard + idx;
    return sk_X509_TRUST_value(trtable, idx - X509_TRUST_COUNT);
}
