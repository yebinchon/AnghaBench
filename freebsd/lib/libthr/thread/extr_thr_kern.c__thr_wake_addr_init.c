
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _thr_umutex_init (int *) ;
 int addr_lock ;
 int * wake_addr_head ;

void
_thr_wake_addr_init(void)
{
 _thr_umutex_init(&addr_lock);
 wake_addr_head = ((void*)0);
}
