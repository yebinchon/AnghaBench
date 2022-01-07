
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eloop_sock_table {int dummy; } ;
typedef int eloop_sock_handler ;
typedef int eloop_event_type ;


 int assert (int) ;
 struct eloop_sock_table* eloop_get_sock_table (int ) ;
 int eloop_sock_table_add_sock (struct eloop_sock_table*,int,int ,void*,void*) ;

int eloop_register_sock(int sock, eloop_event_type type,
   eloop_sock_handler handler,
   void *eloop_data, void *user_data)
{
 struct eloop_sock_table *table;

 assert(sock >= 0);
 table = eloop_get_sock_table(type);
 return eloop_sock_table_add_sock(table, sock, handler,
      eloop_data, user_data);
}
