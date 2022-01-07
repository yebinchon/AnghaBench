
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ KerberosTime ;



__attribute__((used)) static int
cmp_KerberosTime (void *a, void *b)
{
    KerberosTime *aa = a;
    KerberosTime *ab = b;

    return *aa != *ab;
}
