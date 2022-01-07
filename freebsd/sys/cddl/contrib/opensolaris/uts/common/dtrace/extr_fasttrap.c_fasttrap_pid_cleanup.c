
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fasttrap_cleanup_cv ;
 int fasttrap_cleanup_mtx ;
 int fasttrap_cleanup_work ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
fasttrap_pid_cleanup(void)
{

 mtx_lock(&fasttrap_cleanup_mtx);
 if (!fasttrap_cleanup_work) {
  fasttrap_cleanup_work = 1;
  wakeup(&fasttrap_cleanup_cv);
 }
 mtx_unlock(&fasttrap_cleanup_mtx);
}
