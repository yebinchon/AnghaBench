
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recvbuf_t ;


 int LINK_SLIST (int ,int *,int ) ;
 int buffer_shortfall ;
 int * eallocarray (int,int) ;
 int * emalloc_zero (int) ;
 int free_recv_list ;
 int free_recvbufs ;
 int link ;
 int lowater_adds ;
 int total_recvbufs ;

__attribute__((used)) static void
create_buffers(int nbufs)
{
 register recvbuf_t *bufp;
 int i, abuf;

 abuf = nbufs + buffer_shortfall;
 buffer_shortfall = 0;


 bufp = eallocarray(abuf, sizeof(*bufp));


 for (i = 0; i < abuf; i++) {
  LINK_SLIST(free_recv_list, bufp, link);
  bufp++;
  free_recvbufs++;
  total_recvbufs++;
 }
 lowater_adds++;
}
