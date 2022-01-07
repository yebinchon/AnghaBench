
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eloop_sock_table {int count; TYPE_1__* table; } ;
typedef int fd_set ;
struct TYPE_2__ {scalar_t__ sock; } ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int assert (int) ;

__attribute__((used)) static void eloop_sock_table_set_fds(struct eloop_sock_table *table,
         fd_set *fds)
{
 int i;

 FD_ZERO(fds);

 if (table->table == ((void*)0))
  return;

 for (i = 0; i < table->count; i++) {
  assert(table->table[i].sock >= 0);
  FD_SET(table->table[i].sock, fds);
 }
}
