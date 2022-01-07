
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_module_add (char*,int ,int ) ;
 int oid_module_finish ;
 int oid_module_init ;

void ASN1_add_oid_module(void)
{
    CONF_module_add("oid_section", oid_module_init, oid_module_finish);
}
