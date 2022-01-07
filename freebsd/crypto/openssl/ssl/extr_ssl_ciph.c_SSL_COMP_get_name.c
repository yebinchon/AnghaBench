
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int COMP_METHOD ;


 char const* COMP_get_name (int const*) ;

const char *SSL_COMP_get_name(const COMP_METHOD *comp)
{

    return comp ? COMP_get_name(comp) : ((void*)0);



}
