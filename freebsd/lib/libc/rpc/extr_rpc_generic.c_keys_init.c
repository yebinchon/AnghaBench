
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free ;
 int tcp_key ;
 void* tcp_key_error ;
 void* thr_keycreate (int *,int ) ;
 int udp_key ;
 void* udp_key_error ;

__attribute__((used)) static void
keys_init(void)
{

 tcp_key_error = thr_keycreate(&tcp_key, free);
 udp_key_error = thr_keycreate(&udp_key, free);
}
