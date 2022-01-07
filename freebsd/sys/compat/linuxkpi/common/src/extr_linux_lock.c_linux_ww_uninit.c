
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_destroy (int *) ;
 int ww_mutex_global ;

__attribute__((used)) static void
linux_ww_uninit(void *arg)
{
 mtx_destroy(&ww_mutex_global);
}
