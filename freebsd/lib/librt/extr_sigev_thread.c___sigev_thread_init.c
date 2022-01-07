
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;
typedef int pthread_mutex_t ;


 int HASH_QUEUES ;
 int LIST_INIT (int *) ;
 int PTHREAD_CREATE_DETACHED ;
 int PTHREAD_MUTEX_NORMAL ;
 int PTHREAD_SCOPE_SYSTEM ;
 int __sigev_fork_child ;
 int __sigev_fork_parent ;
 int __sigev_fork_prepare ;
 int _pthread_atfork (int ,int ,int ) ;
 int _pthread_attr_init (int *) ;
 int _pthread_attr_setdetachstate (int *,int ) ;
 int _pthread_attr_setscope (int *,int ) ;
 int _pthread_mutex_init (int ,int *) ;
 int _pthread_mutexattr_destroy (int *) ;
 int _pthread_mutexattr_init (int *) ;
 int _pthread_mutexattr_settype (int *,int ) ;
 int atfork_registered ;
 int malloc (int) ;
 int sigev_all ;
 int sigev_default_attr ;
 int * sigev_default_thread ;
 int * sigev_hash ;
 int sigev_list_mtx ;
 int * sigev_thread_create (int ) ;
 int sigev_threads ;

void
__sigev_thread_init(void)
{
 static int inited = 0;
 pthread_mutexattr_t mattr;
 int i;

 _pthread_mutexattr_init(&mattr);
 _pthread_mutexattr_settype(&mattr, PTHREAD_MUTEX_NORMAL);
 sigev_list_mtx = malloc(sizeof(pthread_mutex_t));
 _pthread_mutex_init(sigev_list_mtx, &mattr);
 _pthread_mutexattr_destroy(&mattr);

 for (i = 0; i < HASH_QUEUES; ++i)
  LIST_INIT(&sigev_hash[i]);
 LIST_INIT(&sigev_all);
 LIST_INIT(&sigev_threads);
 sigev_default_thread = ((void*)0);
 if (atfork_registered == 0) {
  _pthread_atfork(
   __sigev_fork_prepare,
   __sigev_fork_parent,
   __sigev_fork_child);
  atfork_registered = 1;
 }
 if (!inited) {
  _pthread_attr_init(&sigev_default_attr);
  _pthread_attr_setscope(&sigev_default_attr,
   PTHREAD_SCOPE_SYSTEM);
  _pthread_attr_setdetachstate(&sigev_default_attr,
   PTHREAD_CREATE_DETACHED);
  inited = 1;
 }
 sigev_default_thread = sigev_thread_create(0);
}
