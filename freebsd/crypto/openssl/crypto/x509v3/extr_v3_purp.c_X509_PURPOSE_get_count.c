
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X509_PURPOSE_COUNT ;
 int sk_X509_PURPOSE_num (int ) ;
 int xptable ;

int X509_PURPOSE_get_count(void)
{
    if (!xptable)
        return X509_PURPOSE_COUNT;
    return sk_X509_PURPOSE_num(xptable) + X509_PURPOSE_COUNT;
}
