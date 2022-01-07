
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cma_dev_array ;
 int cma_dev_cnt ;
 int cma_init_cnt ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ucma_init () ;
 int ucma_init_device (int *) ;

__attribute__((used)) static int ucma_init_all(void)
{
 int i, ret = 0;

 if (!cma_dev_cnt) {
  ret = ucma_init();
  if (ret)
   return ret;
 }

 if (cma_init_cnt == cma_dev_cnt)
  return 0;

 pthread_mutex_lock(&mut);
 for (i = 0; i < cma_dev_cnt; i++) {
  ret = ucma_init_device(&cma_dev_array[i]);
  if (ret)
   break;
 }
 pthread_mutex_unlock(&mut);
 return ret;
}
