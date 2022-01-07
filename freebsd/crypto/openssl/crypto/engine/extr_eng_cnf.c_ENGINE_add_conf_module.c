
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_module_add (char*,int ,int ) ;
 int int_engine_module_finish ;
 int int_engine_module_init ;

void ENGINE_add_conf_module(void)
{
    CONF_module_add("engines",
                    int_engine_module_init, int_engine_module_finish);
}
