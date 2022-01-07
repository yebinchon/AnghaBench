
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __isthreaded ;

void
_thr_setthreaded(int threaded)
{
 __isthreaded = threaded;
}
