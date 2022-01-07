
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eloop_sock_handler ;


 int EVENT_TYPE_READ ;
 int eloop_register_sock (int,int ,int ,void*,void*) ;

int eloop_register_read_sock(int sock, eloop_sock_handler handler,
        void *eloop_data, void *user_data)
{
 return eloop_register_sock(sock, EVENT_TYPE_READ, handler,
       eloop_data, user_data);
}
