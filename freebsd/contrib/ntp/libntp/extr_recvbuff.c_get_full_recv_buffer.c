
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recvbuf_t ;


 int LOCK () ;
 int RECV_INC ;
 int UNLINK_FIFO (int *,int ,int ) ;
 int UNLOCK () ;
 scalar_t__ buffer_shortfall ;
 int create_buffers (int ) ;
 int * free_recv_list ;
 int full_recv_fifo ;
 int full_recvbufs ;
 int link ;

recvbuf_t *
get_full_recv_buffer(void)
{
 recvbuf_t * rbuf;

 LOCK();
 UNLINK_FIFO(rbuf, full_recv_fifo, link);
 if (rbuf != ((void*)0))
  full_recvbufs--;
 UNLOCK();

 return rbuf;
}
