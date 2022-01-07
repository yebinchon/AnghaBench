
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int flags; int cycle; } ;


 int THR_FLAGS_NEED_SUSPEND ;
 int THR_FLAGS_SUSPENDED ;
 int _thr_umtx_wake (int *,int,int ) ;

__attribute__((used)) static void
resume_common(struct pthread *thread)
{

 thread->flags &= ~(THR_FLAGS_NEED_SUSPEND | THR_FLAGS_SUSPENDED);
 thread->cycle++;
 _thr_umtx_wake(&thread->cycle, 1, 0);
}
