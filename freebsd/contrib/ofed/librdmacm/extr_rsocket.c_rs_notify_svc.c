
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int dummy; } ;
struct rs_svc_msg {int cmd; int status; struct rsocket* rs; } ;
struct rs_svc {int * sock; int id; scalar_t__ cnt; int run; } ;


 int AF_UNIX ;
 int EINVAL ;
 int ERR (int) ;
 int SOCK_STREAM ;
 int close (int ) ;
 int mut ;
 int pthread_create (int *,int *,int ,struct rs_svc*) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int rdma_seterrno (int ) ;
 int read_all (int ,struct rs_svc_msg*,int) ;
 int socketpair (int ,int ,int ,int *) ;
 int write_all (int ,struct rs_svc_msg*,int) ;

__attribute__((used)) static int rs_notify_svc(struct rs_svc *svc, struct rsocket *rs, int cmd)
{
 struct rs_svc_msg msg;
 int ret;

 pthread_mutex_lock(&mut);
 if (!svc->cnt) {
  ret = socketpair(AF_UNIX, SOCK_STREAM, 0, svc->sock);
  if (ret)
   goto unlock;

  ret = pthread_create(&svc->id, ((void*)0), svc->run, svc);
  if (ret) {
   ret = ERR(ret);
   goto closepair;
  }
 }

 msg.cmd = cmd;
 msg.status = EINVAL;
 msg.rs = rs;
 write_all(svc->sock[0], &msg, sizeof msg);
 read_all(svc->sock[0], &msg, sizeof msg);
 ret = rdma_seterrno(msg.status);
 if (svc->cnt)
  goto unlock;

 pthread_join(svc->id, ((void*)0));
closepair:
 close(svc->sock[0]);
 close(svc->sock[1]);
unlock:
 pthread_mutex_unlock(&mut);
 return ret;
}
