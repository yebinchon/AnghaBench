
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpc_gss_error_t ;


 int _rpc_gss_error ;

void
rpc_gss_get_error(rpc_gss_error_t *error)
{

 *error = _rpc_gss_error;
}
