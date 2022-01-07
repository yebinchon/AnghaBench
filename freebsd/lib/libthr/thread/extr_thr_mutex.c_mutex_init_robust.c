
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_robust_lists_params {uintptr_t robust_list_offset; uintptr_t robust_priv_list_offset; uintptr_t robust_inact_offset; } ;
struct pthread {int robust_inited; int inact_mtx; int priv_robust_list; int robust_list; } ;
typedef int rb ;


 int UMTX_OP_ROBUST_LISTS ;
 struct pthread* _get_curthread () ;
 int _umtx_op (int *,int ,int,struct umtx_robust_lists_params*,int *) ;

__attribute__((used)) static void
mutex_init_robust(struct pthread *curthread)
{
 struct umtx_robust_lists_params rb;

 if (curthread == ((void*)0))
  curthread = _get_curthread();
 if (curthread->robust_inited)
  return;
 rb.robust_list_offset = (uintptr_t)&curthread->robust_list;
 rb.robust_priv_list_offset = (uintptr_t)&curthread->priv_robust_list;
 rb.robust_inact_offset = (uintptr_t)&curthread->inact_mtx;
 _umtx_op(((void*)0), UMTX_OP_ROBUST_LISTS, sizeof(rb), &rb, ((void*)0));
 curthread->robust_inited = 1;
}
