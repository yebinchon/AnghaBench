
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ used; } ;
typedef TYPE_1__ recvbuf_t ;


 int LINK_SLIST (int ,TYPE_1__*,int ) ;
 int LOCK () ;
 int LOG_ERR ;
 int UNLOCK () ;
 int free_recv_list ;
 int free_recvbufs ;
 int link ;
 int msyslog (int ,char*,scalar_t__) ;

void
freerecvbuf(recvbuf_t *rb)
{
 if (rb) {
  LOCK();
  rb->used--;
  if (rb->used != 0)
   msyslog(LOG_ERR, "******** freerecvbuff non-zero usage: %d *******", rb->used);
  LINK_SLIST(free_recv_list, rb, link);
  free_recvbufs++;
  UNLOCK();
 }
}
