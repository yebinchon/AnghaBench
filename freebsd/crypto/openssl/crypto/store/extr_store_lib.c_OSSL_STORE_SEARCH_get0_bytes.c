
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t stringlength; unsigned char const* string; } ;
typedef TYPE_1__ OSSL_STORE_SEARCH ;



const unsigned char *OSSL_STORE_SEARCH_get0_bytes(const OSSL_STORE_SEARCH
                                                  *criterion, size_t *length)
{
    *length = criterion->stringlength;
    return criterion->string;
}
