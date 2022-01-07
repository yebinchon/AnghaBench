
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ string; } ;
typedef TYPE_1__ OSSL_STORE_SEARCH ;



const char *OSSL_STORE_SEARCH_get0_string(const OSSL_STORE_SEARCH *criterion)
{
    return (const char *)criterion->string;
}
