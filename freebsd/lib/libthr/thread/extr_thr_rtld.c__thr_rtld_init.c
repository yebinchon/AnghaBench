
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;
struct umtx {int dummy; } ;
struct pthread {int dummy; } ;
struct RtldLockInfo {int * at_fork; int thread_clr_flag; int thread_set_flag; int lock_release; int wlock_acquire; int rlock_acquire; int lock_destroy; int lock_create; } ;
typedef int dummy ;


 int SYS_getpid ;
 int UMTX_OP_WAKE ;
 int __error () ;
 int __fillcontextx2 (char*) ;
 int __getcontextx_size () ;
 struct pthread* _get_curthread () ;
 int _malloc_postfork () ;
 int _malloc_prefork () ;
 int _rtld_atfork_post (int *) ;
 int _rtld_atfork_pre (int *) ;
 int _rtld_get_stack_prot () ;
 int _rtld_thread_init (struct RtldLockInfo*) ;
 int _thr_rtld_clr_flag ;
 int _thr_rtld_lock_create ;
 int _thr_rtld_lock_destroy ;
 int _thr_rtld_lock_release ;
 int _thr_rtld_rlock_acquire ;
 int _thr_rtld_set_flag ;
 int _thr_rtld_wlock_acquire ;
 int _thr_signal_block (struct pthread*) ;
 int _thr_signal_unblock (struct pthread*) ;
 int _umtx_op_err (struct umtx*,int ,int,int ,int ) ;
 int * alloca (int) ;
 int getcontext (int *) ;
 int getpid () ;
 int memcpy (long*,long*,int) ;
 int mprotect (int *,int ,int ) ;
 int syscall (int ) ;

void
_thr_rtld_init(void)
{
 struct RtldLockInfo li;
 struct pthread *curthread;
 ucontext_t *uc;
 long dummy = -1;
 int uc_len;

 curthread = _get_curthread();


 _umtx_op_err((struct umtx *)&dummy, UMTX_OP_WAKE, 1, 0, 0);


 __error();


 memcpy(&dummy, &dummy, sizeof(dummy));

 mprotect(((void*)0), 0, 0);
 _rtld_get_stack_prot();

 li.lock_create = _thr_rtld_lock_create;
 li.lock_destroy = _thr_rtld_lock_destroy;
 li.rlock_acquire = _thr_rtld_rlock_acquire;
 li.wlock_acquire = _thr_rtld_wlock_acquire;
 li.lock_release = _thr_rtld_lock_release;
 li.thread_set_flag = _thr_rtld_set_flag;
 li.thread_clr_flag = _thr_rtld_clr_flag;
 li.at_fork = ((void*)0);
 _rtld_atfork_pre(((void*)0));
 _rtld_atfork_post(((void*)0));
 _malloc_prefork();
 _malloc_postfork();
 getpid();
 syscall(SYS_getpid);


 _thr_signal_block(curthread);
 _rtld_thread_init(&li);
 _thr_signal_unblock(curthread);

 uc_len = __getcontextx_size();
 uc = alloca(uc_len);
 getcontext(uc);
 __fillcontextx2((char *)uc);
}
