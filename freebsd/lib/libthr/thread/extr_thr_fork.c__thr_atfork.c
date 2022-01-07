
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_atfork {void (* prepare ) () ;void (* parent ) () ;void (* child ) () ;} ;
struct pthread {int dummy; } ;


 int ENOMEM ;
 int TAILQ_INSERT_TAIL (int *,struct pthread_atfork*,int ) ;
 int THR_CRITICAL_ENTER (struct pthread*) ;
 int THR_CRITICAL_LEAVE (struct pthread*) ;
 struct pthread* _get_curthread () ;
 int _thr_atfork_list ;
 int _thr_atfork_lock ;
 int _thr_check_init () ;
 int _thr_rwl_unlock (int *) ;
 int _thr_rwl_wrlock (int *) ;
 struct pthread_atfork* malloc (int) ;
 int qe ;

int
_thr_atfork(void (*prepare)(void), void (*parent)(void),
    void (*child)(void))
{
 struct pthread *curthread;
 struct pthread_atfork *af;

 _thr_check_init();

 if ((af = malloc(sizeof(struct pthread_atfork))) == ((void*)0))
  return (ENOMEM);

 curthread = _get_curthread();
 af->prepare = prepare;
 af->parent = parent;
 af->child = child;
 THR_CRITICAL_ENTER(curthread);
 _thr_rwl_wrlock(&_thr_atfork_lock);
 TAILQ_INSERT_TAIL(&_thr_atfork_list, af, qe);
 _thr_rwl_unlock(&_thr_atfork_lock);
 THR_CRITICAL_LEAVE(curthread);
 return (0);
}
