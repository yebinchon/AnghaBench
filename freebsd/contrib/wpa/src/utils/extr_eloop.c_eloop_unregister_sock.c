
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eloop_sock_table {int dummy; } ;
typedef int eloop_event_type ;


 struct eloop_sock_table* eloop_get_sock_table (int ) ;
 int eloop_sock_table_remove_sock (struct eloop_sock_table*,int) ;

void eloop_unregister_sock(int sock, eloop_event_type type)
{
 struct eloop_sock_table *table;

 table = eloop_get_sock_table(type);
 eloop_sock_table_remove_sock(table, sock);
}
