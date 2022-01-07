
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rpc_call_destroy ;
 int rpc_call_key ;
 int rpc_call_key_error ;
 int thr_keycreate (int *,int ) ;

__attribute__((used)) static void
rpc_call_key_init(void)
{

 rpc_call_key_error = thr_keycreate(&rpc_call_key, rpc_call_destroy);
}
