
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct thr_param {void (* start_func ) (void*) ;char* tls_base; int tls_size; struct rtprio* rtp; int flags; void** parent_tid; void** child_tid; int stack_size; int stack_base; struct pthread* arg; } ;
struct tcb {int dummy; } ;
struct sched_param {int sched_priority; } ;
struct rtprio {int dummy; } ;
struct TYPE_5__ {int cpusetsize; scalar_t__ sched_inherit; int flags; scalar_t__ suspend; int sched_policy; int prio; int stacksize_attr; int stackaddr_attr; int * cpuset; } ;
struct pthread {void* (* start_routine ) (void*) ;int cancel_enable; int flags; int refcount; int force_exit; int cycle; void* tid; int state; int sigmask; TYPE_1__ attr; scalar_t__ tcb; int * mq; scalar_t__ cancel_async; void* arg; int magic; } ;
typedef int sigset_t ;
typedef struct pthread* pthread_t ;
typedef TYPE_1__* pthread_attr_t ;
typedef int param ;
typedef int cpuset_t ;


 int CPU_LEVEL_WHICH ;
 int CPU_WHICH_TID ;
 int EAGAIN ;
 int EPROCLIM ;
 int INT_MAX ;
 int PS_DEAD ;
 int PS_RUNNING ;
 int PTHREAD_CREATE_DETACHED ;
 scalar_t__ PTHREAD_INHERIT_SCHED ;
 int PTHREAD_SCOPE_SYSTEM ;
 scalar_t__ SHOULD_REPORT_EVENT (struct pthread*,int ) ;
 int SIGCANCEL ;
 int SIGDELSET (int ,int ) ;
 int SIGFILLSET (int ) ;
 int SIGTRAP ;
 int SIG_SETMASK ;
 int TAILQ_INIT (int *) ;
 int TD_CREATE ;
 scalar_t__ THR_CREATE_SUSPENDED ;
 int THR_FLAGS_DETACHED ;
 int THR_FLAGS_NEED_SUSPEND ;
 int THR_MAGIC ;
 int THR_SYSTEM_SCOPE ;
 int THR_THREAD_LOCK (struct pthread*,struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 int TID (struct pthread*) ;
 void* TID_TERMINATED ;
 int TMQ_NITEMS ;
 int __sys_sigprocmask (int ,int *,int *) ;
 struct pthread* _get_curthread () ;
 int _malloc_first_thread () ;
 TYPE_1__ _pthread_attr_default ;
 int _rtld_get_stack_prot () ;
 int _schedparam_to_rtp (int ,struct sched_param*,struct rtprio*) ;
 struct pthread* _thr_alloc (struct pthread*) ;
 int _thr_check_init () ;
 int _thr_free (struct pthread*,struct pthread*) ;
 scalar_t__ _thr_isthreaded () ;
 int _thr_link (struct pthread*,struct pthread*) ;
 int _thr_report_creation (struct pthread*,struct pthread*) ;
 int _thr_setthreaded (int) ;
 int _thr_stack_fix_protection (struct pthread*) ;
 int _thr_try_gc (struct pthread*,struct pthread*) ;
 int _thr_umtx_wake (int *,int ,int ) ;
 int _thread_active_threads ;
 int atomic_add_int (int *,int) ;
 scalar_t__ cpuset_setaffinity (int ,int ,int ,int,int *) ;
 scalar_t__ create_stack (TYPE_1__*) ;
 int errno ;
 int memset (struct thr_param*,int ,int) ;
 int thr_new (struct thr_param*,int) ;
 scalar_t__ thread_start ;

int
_pthread_create(pthread_t * __restrict thread,
    const pthread_attr_t * __restrict attr, void *(*start_routine) (void *),
    void * __restrict arg)
{
 struct pthread *curthread, *new_thread;
 struct thr_param param;
 struct sched_param sched_param;
 struct rtprio rtp;
 sigset_t set, oset;
 cpuset_t *cpusetp;
 int i, cpusetsize, create_suspended, locked, old_stack_prot, ret;

 cpusetp = ((void*)0);
 ret = cpusetsize = 0;
 _thr_check_init();




 if (_thr_isthreaded() == 0) {
  _malloc_first_thread();
  _thr_setthreaded(1);
 }

 curthread = _get_curthread();
 if ((new_thread = _thr_alloc(curthread)) == ((void*)0))
  return (EAGAIN);

 memset(&param, 0, sizeof(param));

 if (attr == ((void*)0) || *attr == ((void*)0))

  new_thread->attr = _pthread_attr_default;
 else {
  new_thread->attr = *(*attr);
  cpusetp = new_thread->attr.cpuset;
  cpusetsize = new_thread->attr.cpusetsize;
  new_thread->attr.cpuset = ((void*)0);
  new_thread->attr.cpusetsize = 0;
 }
 if (new_thread->attr.sched_inherit == PTHREAD_INHERIT_SCHED) {

  if (curthread->attr.flags & PTHREAD_SCOPE_SYSTEM)
   new_thread->attr.flags |= PTHREAD_SCOPE_SYSTEM;
  else
   new_thread->attr.flags &= ~PTHREAD_SCOPE_SYSTEM;

  new_thread->attr.prio = curthread->attr.prio;
  new_thread->attr.sched_policy = curthread->attr.sched_policy;
 }

 new_thread->tid = TID_TERMINATED;

 old_stack_prot = _rtld_get_stack_prot();
 if (create_stack(&new_thread->attr) != 0) {

  _thr_free(curthread, new_thread);
  return (EAGAIN);
 }




 new_thread->magic = THR_MAGIC;
 new_thread->start_routine = start_routine;
 new_thread->arg = arg;
 new_thread->cancel_enable = 1;
 new_thread->cancel_async = 0;

 for (i = 0; i < TMQ_NITEMS; i++)
  TAILQ_INIT(&new_thread->mq[i]);


 if (new_thread->attr.suspend == THR_CREATE_SUSPENDED) {
  new_thread->flags = THR_FLAGS_NEED_SUSPEND;
  create_suspended = 1;
 } else {
  create_suspended = 0;
 }

 new_thread->state = PS_RUNNING;

 if (new_thread->attr.flags & PTHREAD_CREATE_DETACHED)
  new_thread->flags |= THR_FLAGS_DETACHED;


 new_thread->refcount = 1;
 _thr_link(curthread, new_thread);





 if (old_stack_prot != _rtld_get_stack_prot())
  _thr_stack_fix_protection(new_thread);


 (*thread) = new_thread;
 if (SHOULD_REPORT_EVENT(curthread, TD_CREATE) || cpusetp != ((void*)0)) {
  THR_THREAD_LOCK(curthread, new_thread);
  locked = 1;
 } else
  locked = 0;
 param.start_func = (void (*)(void *)) thread_start;
 param.arg = new_thread;
 param.stack_base = new_thread->attr.stackaddr_attr;
 param.stack_size = new_thread->attr.stacksize_attr;
 param.tls_base = (char *)new_thread->tcb;
 param.tls_size = sizeof(struct tcb);
 param.child_tid = &new_thread->tid;
 param.parent_tid = &new_thread->tid;
 param.flags = 0;
 if (new_thread->attr.flags & PTHREAD_SCOPE_SYSTEM)
  param.flags |= THR_SYSTEM_SCOPE;
 if (new_thread->attr.sched_inherit == PTHREAD_INHERIT_SCHED)
  param.rtp = ((void*)0);
 else {
  sched_param.sched_priority = new_thread->attr.prio;
  _schedparam_to_rtp(new_thread->attr.sched_policy,
   &sched_param, &rtp);
  param.rtp = &rtp;
 }


 if (create_suspended) {
  SIGFILLSET(set);
  SIGDELSET(set, SIGTRAP);
  __sys_sigprocmask(SIG_SETMASK, &set, &oset);
  new_thread->sigmask = oset;
  SIGDELSET(new_thread->sigmask, SIGCANCEL);
 }

 ret = thr_new(&param, sizeof(param));

 if (ret != 0) {
  ret = errno;



  if (ret == EPROCLIM)
   ret = EAGAIN;
 }

 if (create_suspended)
  __sys_sigprocmask(SIG_SETMASK, &oset, ((void*)0));

 if (ret != 0) {
  if (!locked)
   THR_THREAD_LOCK(curthread, new_thread);
  new_thread->state = PS_DEAD;
  new_thread->tid = TID_TERMINATED;
  new_thread->flags |= THR_FLAGS_DETACHED;
  new_thread->refcount--;
  if (new_thread->flags & THR_FLAGS_NEED_SUSPEND) {
   new_thread->cycle++;
   _thr_umtx_wake(&new_thread->cycle, INT_MAX, 0);
  }
  _thr_try_gc(curthread, new_thread);
  atomic_add_int(&_thread_active_threads, -1);
 } else if (locked) {
  if (cpusetp != ((void*)0)) {
   if (cpuset_setaffinity(CPU_LEVEL_WHICH, CPU_WHICH_TID,
    TID(new_thread), cpusetsize, cpusetp)) {
    ret = errno;

    new_thread->force_exit = 1;
    new_thread->flags |= THR_FLAGS_DETACHED;
    _thr_try_gc(curthread, new_thread);

    goto out;
   }
  }

  _thr_report_creation(curthread, new_thread);
  THR_THREAD_UNLOCK(curthread, new_thread);
 }
out:
 if (ret)
  (*thread) = 0;
 return (ret);
}
