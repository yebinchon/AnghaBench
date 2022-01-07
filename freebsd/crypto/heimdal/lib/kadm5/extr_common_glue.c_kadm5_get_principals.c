
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kadm5_ret_t ;


 int __CALL (int ,void*) ;
 int get_principals ;

kadm5_ret_t
kadm5_get_principals(void *server_handle,
       const char *expression,
       char ***princs,
       int *count)
{
    return __CALL(get_principals, (server_handle, expression, princs, count));
}
