
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int case_change ;
 scalar_t__ ossl_islower (int) ;

int ossl_toupper(int c)
{
    return ossl_islower(c) ? c ^ case_change : c;
}
