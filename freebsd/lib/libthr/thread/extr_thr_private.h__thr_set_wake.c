
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int _thr_umtx_wake (unsigned int*,int ,int ) ;

__attribute__((used)) static inline void
_thr_set_wake(unsigned int *waddr)
{
 *waddr = 1;
 _thr_umtx_wake(waddr, INT_MAX, 0);
}
