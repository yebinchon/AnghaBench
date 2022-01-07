
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitializeCriticalSection (int *) ;
 int RecvLock ;
 int atexit (int *) ;
 int create_buffers (int) ;
 scalar_t__ free_recvbufs ;
 scalar_t__ full_recvbufs ;
 scalar_t__ lowater_adds ;
 scalar_t__ total_recvbufs ;
 int uninit_recvbuff ;

void
init_recvbuff(int nbufs)
{




 free_recvbufs = total_recvbufs = 0;
 full_recvbufs = lowater_adds = 0;

 create_buffers(nbufs);
}
