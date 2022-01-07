
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_device {int dummy; } ;
struct TYPE_3__ {int guid; } ;


 int ENODEV ;
 int ENOMEM ;
 int ERR (int ) ;
 TYPE_1__* calloc (int,int) ;
 int check_abi_version () ;
 TYPE_1__* cma_dev_array ;
 int cma_dev_cnt ;
 int fastlock_destroy (int *) ;
 int fastlock_init (int *) ;
 int ibv_free_device_list (struct ibv_device**) ;
 int ibv_get_device_guid (struct ibv_device*) ;
 struct ibv_device** ibv_get_device_list (int*) ;
 int idm_lock ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ucma_set_af_ib_support () ;

int ucma_init(void)
{
 struct ibv_device **dev_list = ((void*)0);
 int i, ret, dev_cnt;


 if (cma_dev_cnt)
  return 0;

 pthread_mutex_lock(&mut);
 if (cma_dev_cnt) {
  pthread_mutex_unlock(&mut);
  return 0;
 }

 fastlock_init(&idm_lock);
 ret = check_abi_version();
 if (ret)
  goto err1;

 dev_list = ibv_get_device_list(&dev_cnt);
 if (!dev_list) {
  ret = ERR(ENODEV);
  goto err1;
 }

 if (!dev_cnt) {
  ret = ERR(ENODEV);
  goto err2;
 }

 cma_dev_array = calloc(dev_cnt, sizeof(*cma_dev_array));
 if (!cma_dev_array) {
  ret = ERR(ENOMEM);
  goto err2;
 }

 for (i = 0; dev_list[i]; i++)
  cma_dev_array[i].guid = ibv_get_device_guid(dev_list[i]);

 cma_dev_cnt = dev_cnt;
 ucma_set_af_ib_support();
 pthread_mutex_unlock(&mut);
 ibv_free_device_list(dev_list);
 return 0;

err2:
 ibv_free_device_list(dev_list);
err1:
 fastlock_destroy(&idm_lock);
 pthread_mutex_unlock(&mut);
 return ret;
}
