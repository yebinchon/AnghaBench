
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PURPOSE ;


 scalar_t__ X509_PURPOSE_COUNT ;
 int * sk_X509_PURPOSE_value (int ,scalar_t__) ;
 int xptable ;
 int * xstandard ;

X509_PURPOSE *X509_PURPOSE_get0(int idx)
{
    if (idx < 0)
        return ((void*)0);
    if (idx < (int)X509_PURPOSE_COUNT)
        return xstandard + idx;
    return sk_X509_PURPOSE_value(xptable, idx - X509_PURPOSE_COUNT);
}
