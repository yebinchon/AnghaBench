
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abi_ver ;
 int check_abi_version () ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int ucm_init(void)
{
 int ret = 0;

 pthread_mutex_lock(&mut);
 if (!abi_ver)
  ret = check_abi_version();
 pthread_mutex_unlock(&mut);

 return ret;
}
