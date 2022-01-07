
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msghdr {int msg_iovlen; scalar_t__ msg_flags; int * msg_control; struct iovec* msg_iov; int msg_namelen; int msg_name; } ;
struct linux_sendto_args {int flags; int s; int len; int tolen; int to; int msg; } ;
struct ip {int ip_off; int ip_len; } ;
struct iovec {char* iov_base; int iov_len; } ;


 int EINVAL ;
 int IP_MAXPACKET ;
 int M_LINUX ;
 int M_WAITOK ;
 int PTRIN (int ) ;
 int UIO_SYSSPACE ;
 int copyin (int ,struct ip*,int ) ;
 int free (struct ip*,int ) ;
 int linux_ip_copysize ;
 int linux_sendit (struct thread*,int ,struct msghdr*,int ,int *,int ) ;
 scalar_t__ malloc (int ,int ,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int
linux_sendto_hdrincl(struct thread *td, struct linux_sendto_args *linux_args)
{







 struct ip *packet;
 struct msghdr msg;
 struct iovec aiov[1];
 int error;


 if (linux_args->len < 8 ||
     linux_args->len > IP_MAXPACKET)
  return (EINVAL);

 packet = (struct ip *)malloc(linux_args->len, M_LINUX, M_WAITOK);


 if ((error = copyin(PTRIN(linux_args->msg), packet,
     linux_args->len)))
  goto goout;


 packet->ip_len = linux_args->len;
 packet->ip_off = ntohs(packet->ip_off);


 msg.msg_name = PTRIN(linux_args->to);
 msg.msg_namelen = linux_args->tolen;
 msg.msg_iov = aiov;
 msg.msg_iovlen = 1;
 msg.msg_control = ((void*)0);
 msg.msg_flags = 0;
 aiov[0].iov_base = (char *)packet;
 aiov[0].iov_len = linux_args->len;
 error = linux_sendit(td, linux_args->s, &msg, linux_args->flags,
     ((void*)0), UIO_SYSSPACE);
goout:
 free(packet, M_LINUX);
 return (error);
}
