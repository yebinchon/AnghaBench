
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X509_TRUST_COUNT ;
 int sk_X509_TRUST_num (int ) ;
 int trtable ;

int X509_TRUST_get_count(void)
{
    if (!trtable)
        return X509_TRUST_COUNT;
    return sk_X509_TRUST_num(trtable) + X509_TRUST_COUNT;
}
