
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UMTX_OP_NWAKE_PRIVATE ;
 int _umtx_op (unsigned int**,int ,int,int *,int *) ;

void
_thr_wake_all(unsigned int *waddrs[], int count)
{
 int i;

 for (i = 0; i < count; ++i)
  *waddrs[i] = 1;
 _umtx_op(waddrs, UMTX_OP_NWAKE_PRIVATE, count, ((void*)0), ((void*)0));
}
