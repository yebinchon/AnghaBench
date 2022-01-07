
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {scalar_t__ robust_list; int * mq; } ;


 size_t TMQ_NORM ;
 size_t TMQ_NORM_PP ;
 size_t TMQ_NORM_PP_PRIV ;
 size_t TMQ_NORM_PRIV ;
 size_t TMQ_ROBUST_PP ;
 size_t TMQ_ROBUST_PP_PRIV ;
 int UMUTEX_CONTESTED ;
 int queue_fork (struct pthread*,int *,int *,int ) ;

void
_mutex_fork(struct pthread *curthread)
{

 queue_fork(curthread, &curthread->mq[TMQ_NORM],
     &curthread->mq[TMQ_NORM_PRIV], 0);
 queue_fork(curthread, &curthread->mq[TMQ_NORM_PP],
     &curthread->mq[TMQ_NORM_PP_PRIV], UMUTEX_CONTESTED);
 queue_fork(curthread, &curthread->mq[TMQ_ROBUST_PP],
     &curthread->mq[TMQ_ROBUST_PP_PRIV], UMUTEX_CONTESTED);
 curthread->robust_list = 0;
}
