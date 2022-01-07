
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* xdrproc_t ) (TYPE_1__*,void*) ;
struct TYPE_7__ {int x_op; } ;
struct cu_data {size_t cu_fd; TYPE_1__ cu_outxdrs; } ;
typedef int sigset_t ;
typedef int bool_t ;
typedef TYPE_1__ XDR ;
struct TYPE_8__ {scalar_t__ cl_private; } ;
typedef TYPE_3__ CLIENT ;


 int SIG_SETMASK ;
 int XDR_FREE ;
 int clnt_fd_lock ;
 int cond_signal (int *) ;
 int cond_wait (int *,int *) ;
 int * dg_cv ;
 scalar_t__* dg_fd_locks ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sigfillset (int *) ;
 int stub1 (TYPE_1__*,void*) ;
 int thr_sigsetmask (int ,int *,int *) ;

__attribute__((used)) static bool_t
clnt_dg_freeres(CLIENT *cl, xdrproc_t xdr_res, void *res_ptr)
{
 struct cu_data *cu = (struct cu_data *)cl->cl_private;
 XDR *xdrs = &(cu->cu_outxdrs);
 bool_t dummy;
 sigset_t mask;
 sigset_t newmask;

 sigfillset(&newmask);
 thr_sigsetmask(SIG_SETMASK, &newmask, &mask);
 mutex_lock(&clnt_fd_lock);
 while (dg_fd_locks[cu->cu_fd])
  cond_wait(&dg_cv[cu->cu_fd], &clnt_fd_lock);
 xdrs->x_op = XDR_FREE;
 dummy = (*xdr_res)(xdrs, res_ptr);
 mutex_unlock(&clnt_fd_lock);
 thr_sigsetmask(SIG_SETMASK, &mask, ((void*)0));
 cond_signal(&dg_cv[cu->cu_fd]);
 return (dummy);
}
