
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _rpc_gss_load_mech () ;
 char const** mech_names ;

const char **
rpc_gss_get_mechanisms(void)
{

 _rpc_gss_load_mech();
 return (mech_names);
}
