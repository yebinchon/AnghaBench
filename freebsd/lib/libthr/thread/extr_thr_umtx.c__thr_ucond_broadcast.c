
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucond {int c_has_waiters; } ;


 int UMTX_OP_CV_BROADCAST ;
 int _umtx_op_err (struct ucond*,int ,int ,int *,int *) ;

int
_thr_ucond_broadcast(struct ucond *cv)
{

 if (!cv->c_has_waiters)
  return (0);
 return (_umtx_op_err(cv, UMTX_OP_CV_BROADCAST, 0, ((void*)0), ((void*)0)));
}
