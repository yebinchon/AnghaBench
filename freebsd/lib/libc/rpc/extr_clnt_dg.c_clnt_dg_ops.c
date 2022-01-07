
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clnt_ops {int cl_control; int cl_destroy; int cl_freeres; int cl_geterr; int cl_abort; int * cl_call; } ;
typedef int sigset_t ;


 int SIG_SETMASK ;
 int clnt_dg_abort ;
 int * clnt_dg_call ;
 int clnt_dg_control ;
 int clnt_dg_destroy ;
 int clnt_dg_freeres ;
 int clnt_dg_geterr ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ops_lock ;
 int sigfillset (int *) ;
 int thr_sigsetmask (int ,int *,int *) ;

__attribute__((used)) static struct clnt_ops *
clnt_dg_ops(void)
{
 static struct clnt_ops ops;
 sigset_t mask;
 sigset_t newmask;



 sigfillset(&newmask);
 thr_sigsetmask(SIG_SETMASK, &newmask, &mask);
 mutex_lock(&ops_lock);
 if (ops.cl_call == ((void*)0)) {
  ops.cl_call = clnt_dg_call;
  ops.cl_abort = clnt_dg_abort;
  ops.cl_geterr = clnt_dg_geterr;
  ops.cl_freeres = clnt_dg_freeres;
  ops.cl_destroy = clnt_dg_destroy;
  ops.cl_control = clnt_dg_control;
 }
 mutex_unlock(&ops_lock);
 thr_sigsetmask(SIG_SETMASK, &mask, ((void*)0));
 return (&ops);
}
