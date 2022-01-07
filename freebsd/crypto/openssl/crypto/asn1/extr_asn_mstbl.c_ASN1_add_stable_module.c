
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_module_add (char*,int ,int ) ;
 int stbl_module_finish ;
 int stbl_module_init ;

void ASN1_add_stable_module(void)
{
    CONF_module_add("stbl_section", stbl_module_init, stbl_module_finish);
}
