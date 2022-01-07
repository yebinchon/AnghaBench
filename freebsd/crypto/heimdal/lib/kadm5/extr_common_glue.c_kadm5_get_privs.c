
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kadm5_ret_t ;


 int __CALL (int ,void*) ;
 int get_privs ;

kadm5_ret_t
kadm5_get_privs(void *server_handle,
  uint32_t *privs)
{
    return __CALL(get_privs, (server_handle, privs));
}
