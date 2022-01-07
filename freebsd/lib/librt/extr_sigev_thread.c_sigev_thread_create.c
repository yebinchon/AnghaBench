
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigev_thread {int tn_refcount; int tn_lwpid; int tn_cv; int tn_thread; int * tn_cur; } ;
typedef int sigset_t ;


 int LIST_INSERT_HEAD (int *,struct sigev_thread*,int ) ;
 int LIST_REMOVE (struct sigev_thread*,int ) ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int SIGTRAP ;
 int SIG_SETMASK ;
 int __sigev_list_lock () ;
 int __sigev_list_unlock () ;
 int _pthread_cond_init (int *,int *) ;
 int _pthread_cond_wait (int *,int ) ;
 int _pthread_create (int *,int *,int ,struct sigev_thread*) ;
 int _sigprocmask (int ,int *,int *) ;
 int free (struct sigev_thread*) ;
 struct sigev_thread* malloc (int) ;
 int sigdelset (int *,int ) ;
 int sigev_default_attr ;
 struct sigev_thread* sigev_default_thread ;
 int sigev_list_mtx ;
 int sigev_service_loop ;
 int sigev_threads ;
 int sigfillset (int *) ;
 int tn_link ;

__attribute__((used)) static struct sigev_thread *
sigev_thread_create(int usedefault)
{
 struct sigev_thread *tn;
 sigset_t set, oset;
 int ret;

 if (usedefault && sigev_default_thread) {
  __sigev_list_lock();
  sigev_default_thread->tn_refcount++;
  __sigev_list_unlock();
  return (sigev_default_thread);
 }

 tn = malloc(sizeof(*tn));
 tn->tn_cur = ((void*)0);
 tn->tn_lwpid = -1;
 tn->tn_refcount = 1;
 _pthread_cond_init(&tn->tn_cv, ((void*)0));


 __sigev_list_lock();
 LIST_INSERT_HEAD(&sigev_threads, tn, tn_link);
 __sigev_list_unlock();

 sigfillset(&set);
 sigdelset(&set, SIGBUS);
 sigdelset(&set, SIGILL);
 sigdelset(&set, SIGFPE);
 sigdelset(&set, SIGSEGV);
 sigdelset(&set, SIGTRAP);
 _sigprocmask(SIG_SETMASK, &set, &oset);
 ret = _pthread_create(&tn->tn_thread, &sigev_default_attr,
   sigev_service_loop, tn);
 _sigprocmask(SIG_SETMASK, &oset, ((void*)0));

 if (ret != 0) {
  __sigev_list_lock();
  LIST_REMOVE(tn, tn_link);
  __sigev_list_unlock();
  free(tn);
  tn = ((void*)0);
 } else {


  __sigev_list_lock();
  while (tn->tn_lwpid == -1)
   _pthread_cond_wait(&tn->tn_cv, sigev_list_mtx);
  __sigev_list_unlock();
 }
 return (tn);
}
