
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_lock (int *) ;
 int ww_mutex_global ;

__attribute__((used)) static inline void
linux_ww_lock(void)
{
 mtx_lock(&ww_mutex_global);
}
