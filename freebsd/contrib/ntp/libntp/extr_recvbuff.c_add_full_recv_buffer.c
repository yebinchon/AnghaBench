
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recvbuf_t ;


 int LINK_FIFO (int ,int *,int ) ;
 int LOCK () ;
 int LOG_ERR ;
 int UNLOCK () ;
 int full_recv_fifo ;
 int full_recvbufs ;
 int link ;
 int msyslog (int ,char*) ;

void
add_full_recv_buffer(recvbuf_t *rb)
{
 if (rb == ((void*)0)) {
  msyslog(LOG_ERR, "add_full_recv_buffer received NULL buffer");
  return;
 }
 LOCK();
 LINK_FIFO(full_recv_fifo, rb, link);
 full_recvbufs++;
 UNLOCK();
}
