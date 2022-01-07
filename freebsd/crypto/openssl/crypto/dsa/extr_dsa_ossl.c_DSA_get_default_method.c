
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSA_METHOD ;


 int const* default_DSA_method ;

const DSA_METHOD *DSA_get_default_method(void)
{
    return default_DSA_method;
}
