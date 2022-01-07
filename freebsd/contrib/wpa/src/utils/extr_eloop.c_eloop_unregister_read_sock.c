
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENT_TYPE_READ ;
 int eloop_unregister_sock (int,int ) ;

void eloop_unregister_read_sock(int sock)
{
 eloop_unregister_sock(sock, EVENT_TYPE_READ);
}
