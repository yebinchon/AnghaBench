
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_ADDR ;


 scalar_t__ addr_strings (int const*,int,char**,int *) ;

char *BIO_ADDR_hostname_string(const BIO_ADDR *ap, int numeric)
{
    char *hostname = ((void*)0);

    if (addr_strings(ap, numeric, &hostname, ((void*)0)))
        return hostname;

    return ((void*)0);
}
