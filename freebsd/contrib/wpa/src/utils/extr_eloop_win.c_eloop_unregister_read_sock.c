
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct eloop_sock {int dummy; } ;
struct TYPE_5__ {size_t reader_count; int reader_table_changed; TYPE_1__* readers; } ;
struct TYPE_4__ {int sock; int event; } ;


 int WSACloseEvent (int ) ;
 int WSAEventSelect (int,int ,int ) ;
 TYPE_3__ eloop ;
 int os_memmove (TYPE_1__*,TYPE_1__*,size_t) ;

void eloop_unregister_read_sock(int sock)
{
 size_t i;

 if (eloop.readers == ((void*)0) || eloop.reader_count == 0)
  return;

 for (i = 0; i < eloop.reader_count; i++) {
  if (eloop.readers[i].sock == sock)
   break;
 }
 if (i == eloop.reader_count)
  return;

 WSAEventSelect(eloop.readers[i].sock, eloop.readers[i].event, 0);
 WSACloseEvent(eloop.readers[i].event);

 if (i != eloop.reader_count - 1) {
  os_memmove(&eloop.readers[i], &eloop.readers[i + 1],
      (eloop.reader_count - i - 1) *
      sizeof(struct eloop_sock));
 }
 eloop.reader_count--;
 eloop.reader_table_changed = 1;
}
