
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int bool_t ;


 int TRUE ;

bool_t
rpc_gss_get_versions(u_int *vers_hi, u_int *vers_lo)
{

 *vers_hi = 1;
 *vers_lo = 1;
 return (TRUE);
}
