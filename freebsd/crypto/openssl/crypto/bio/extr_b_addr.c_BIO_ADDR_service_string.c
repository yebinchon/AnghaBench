
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_ADDR ;


 scalar_t__ addr_strings (int const*,int,int *,char**) ;

char *BIO_ADDR_service_string(const BIO_ADDR *ap, int numeric)
{
    char *service = ((void*)0);

    if (addr_strings(ap, numeric, ((void*)0), &service))
        return service;

    return ((void*)0);
}
