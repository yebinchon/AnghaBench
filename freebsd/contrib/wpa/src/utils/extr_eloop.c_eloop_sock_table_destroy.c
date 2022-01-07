
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct eloop_sock_table {int count; TYPE_1__* table; } ;
struct TYPE_3__ {int handler; int user_data; int eloop_data; int sock; } ;


 int MSG_INFO ;
 int os_free (TYPE_1__*) ;
 int wpa_printf (int ,char*,int ,int ,int ,int ) ;
 int wpa_trace_dump (char*,TYPE_1__*) ;
 int wpa_trace_dump_funcname (char*,int ) ;

__attribute__((used)) static void eloop_sock_table_destroy(struct eloop_sock_table *table)
{
 if (table) {
  int i;
  for (i = 0; i < table->count && table->table; i++) {
   wpa_printf(MSG_INFO, "ELOOP: remaining socket: "
       "sock=%d eloop_data=%p user_data=%p "
       "handler=%p",
       table->table[i].sock,
       table->table[i].eloop_data,
       table->table[i].user_data,
       table->table[i].handler);
   wpa_trace_dump_funcname("eloop unregistered socket "
      "handler",
      table->table[i].handler);
   wpa_trace_dump("eloop sock", &table->table[i]);
  }
  os_free(table->table);
 }
}
