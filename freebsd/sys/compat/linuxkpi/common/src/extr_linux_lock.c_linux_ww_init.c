
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ww_mutex_global ;
 int ww_mutex_head ;

__attribute__((used)) static void
linux_ww_init(void *arg)
{
 TAILQ_INIT(&ww_mutex_head);
 mtx_init(&ww_mutex_global, "lkpi-ww-mtx", ((void*)0), MTX_DEF);
}
