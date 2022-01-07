
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct timeval {int dummy; } ;
struct netbuf {int len; int buf; } ;
struct TYPE_4__ {int ct_mcallc; int ct_mcalli; } ;
struct ct_data {size_t ct_fd; TYPE_1__ ct_u; struct netbuf ct_addr; struct timeval ct_wait; void* ct_waitset; void* ct_closeit; } ;
typedef int sigset_t ;
typedef void* bool_t ;
struct TYPE_5__ {scalar_t__ cl_private; } ;
typedef TYPE_2__ CLIENT ;


 int BYTES_PER_XDR_UNIT ;
 void* FALSE ;
 int SIG_SETMASK ;
 void* TRUE ;
 scalar_t__ __isthreaded ;
 int assert (int ) ;
 int clnt_fd_lock ;
 int cond_wait (int *,int *) ;
 int htonlp (int *,void*,int) ;
 int memcpy (void*,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohlp (void*,int *) ;
 int release_fd_lock (size_t,int ) ;
 int sigfillset (int *) ;
 int thr_sigsetmask (int ,int *,int *) ;
 int time_not_ok (struct timeval*) ;
 int * vc_cv ;
 int* vc_fd_locks ;

__attribute__((used)) static bool_t
clnt_vc_control(CLIENT *cl, u_int request, void *info)
{
 struct ct_data *ct;
 void *infop = info;
 sigset_t mask;
 sigset_t newmask;
 int rpc_lock_value;

 assert(cl != ((void*)0));

 ct = (struct ct_data *)cl->cl_private;

 sigfillset(&newmask);
 thr_sigsetmask(SIG_SETMASK, &newmask, &mask);
 mutex_lock(&clnt_fd_lock);
 while (vc_fd_locks[ct->ct_fd])
  cond_wait(&vc_cv[ct->ct_fd], &clnt_fd_lock);
 if (__isthreaded)
                rpc_lock_value = 1;
        else
                rpc_lock_value = 0;
 vc_fd_locks[ct->ct_fd] = rpc_lock_value;
 mutex_unlock(&clnt_fd_lock);

 switch (request) {
 case 134:
  ct->ct_closeit = TRUE;
  release_fd_lock(ct->ct_fd, mask);
  return (TRUE);
 case 133:
  ct->ct_closeit = FALSE;
  release_fd_lock(ct->ct_fd, mask);
  return (TRUE);
 default:
  break;
 }


 if (info == ((void*)0)) {
  release_fd_lock(ct->ct_fd, mask);
  return (FALSE);
 }
 switch (request) {
 case 130:
  if (time_not_ok((struct timeval *)info)) {
   release_fd_lock(ct->ct_fd, mask);
   return (FALSE);
  }
  ct->ct_wait = *(struct timeval *)infop;
  ct->ct_waitset = TRUE;
  break;
 case 137:
  *(struct timeval *)infop = ct->ct_wait;
  break;
 case 139:
  (void) memcpy(info, ct->ct_addr.buf, (size_t)ct->ct_addr.len);
  break;
 case 141:
  *(int *)info = ct->ct_fd;
  break;
 case 138:

  *(struct netbuf *)info = ct->ct_addr;
  break;
 case 131:
  release_fd_lock(ct->ct_fd, mask);
  return (FALSE);
 case 135:





  ntohlp(info, &ct->ct_u.ct_mcalli);
  break;
 case 128:


  htonlp(&ct->ct_u.ct_mcalli, info, 1);
  break;
 case 136:






  ntohlp(info, ct->ct_u.ct_mcallc + 4 * BYTES_PER_XDR_UNIT);
  break;

 case 129:
  htonlp(ct->ct_u.ct_mcallc + 4 * BYTES_PER_XDR_UNIT, info, 0);
  break;

 case 140:






  ntohlp(info, ct->ct_u.ct_mcallc + 3 * BYTES_PER_XDR_UNIT);
  break;

 case 132:
  htonlp(ct->ct_u.ct_mcallc + 3 * BYTES_PER_XDR_UNIT, info, 0);
  break;

 default:
  release_fd_lock(ct->ct_fd, mask);
  return (FALSE);
 }
 release_fd_lock(ct->ct_fd, mask);
 return (TRUE);
}
