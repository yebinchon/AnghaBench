
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_unlock (int *) ;
 int ww_mutex_global ;

__attribute__((used)) static inline void
linux_ww_unlock(void)
{
 mtx_unlock(&ww_mutex_global);
}
