
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kadm5_ret_t ;


 int __CALL (int ,void*) ;
 int destroy ;

kadm5_ret_t
kadm5_destroy (void *server_handle)
{
    return __CALL(destroy, (server_handle));
}
