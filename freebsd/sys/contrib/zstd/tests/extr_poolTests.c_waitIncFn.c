
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mut; scalar_t__ val; } ;
typedef TYPE_1__ abruptEndCanary_t ;


 int UTIL_sleepMilli (int) ;
 int ZSTD_pthread_mutex_lock (int *) ;
 int ZSTD_pthread_mutex_unlock (int *) ;

__attribute__((used)) static void waitIncFn(void *opaque) {
  abruptEndCanary_t* test = (abruptEndCanary_t*) opaque;
  UTIL_sleepMilli(10);
  ZSTD_pthread_mutex_lock(&test->mut);
  test->val = test->val + 1;
  ZSTD_pthread_mutex_unlock(&test->mut);
}
