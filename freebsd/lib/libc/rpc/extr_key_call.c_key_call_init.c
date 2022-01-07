
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int key_call_destroy ;
 int key_call_key ;
 int key_call_key_error ;
 int thr_keycreate (int *,int ) ;

__attribute__((used)) static void
key_call_init(void)
{

 key_call_key_error = thr_keycreate(&key_call_key, key_call_destroy);
}
