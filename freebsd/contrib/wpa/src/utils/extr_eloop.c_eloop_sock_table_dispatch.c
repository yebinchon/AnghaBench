
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eloop_sock_table {int count; scalar_t__ changed; TYPE_1__* table; } ;
typedef int fd_set ;
struct TYPE_2__ {int user_data; int eloop_data; int sock; int (* handler ) (int ,int ,int ) ;} ;


 scalar_t__ FD_ISSET (int ,int *) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void eloop_sock_table_dispatch(struct eloop_sock_table *table,
          fd_set *fds)
{
 int i;

 if (table == ((void*)0) || table->table == ((void*)0))
  return;

 table->changed = 0;
 for (i = 0; i < table->count; i++) {
  if (FD_ISSET(table->table[i].sock, fds)) {
   table->table[i].handler(table->table[i].sock,
      table->table[i].eloop_data,
      table->table[i].user_data);
   if (table->changed)
    break;
  }
 }
}
