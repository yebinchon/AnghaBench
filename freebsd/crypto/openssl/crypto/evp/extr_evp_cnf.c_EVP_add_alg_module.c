
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_module_add (char*,int ,int ) ;
 int alg_module_init ;

void EVP_add_alg_module(void)
{
    CONF_module_add("alg_section", alg_module_init, 0);
}
