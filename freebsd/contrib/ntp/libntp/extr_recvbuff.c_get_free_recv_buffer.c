
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int used; } ;
typedef TYPE_1__ recvbuf_t ;


 int LOCK () ;
 int UNLINK_HEAD_SLIST (TYPE_1__*,int ,int ) ;
 int UNLOCK () ;
 int buffer_shortfall ;
 int free_recv_list ;
 int free_recvbufs ;
 int initialise_buffer (TYPE_1__*) ;
 int link ;

recvbuf_t *
get_free_recv_buffer(void)
{
 recvbuf_t *buffer;

 LOCK();
 UNLINK_HEAD_SLIST(buffer, free_recv_list, link);
 if (buffer != ((void*)0)) {
  free_recvbufs--;
  initialise_buffer(buffer);
  buffer->used++;
 } else {
  buffer_shortfall++;
 }
 UNLOCK();

 return buffer;
}
