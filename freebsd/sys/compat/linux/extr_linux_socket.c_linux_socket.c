
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v6only ;
struct thread {int * td_retval; } ;
struct linux_socket_args {int type; int protocol; int domain; } ;
typedef int hdrincl ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPPROTO_RAW ;
 int IPV6_V6ONLY ;
 int IP_HDRINCL ;
 int LINUX_SOCK_MAX ;
 int LINUX_SOCK_TYPE_MASK ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_RAW ;
 int UIO_SYSSPACE ;
 int kern_setsockopt (struct thread*,int ,int ,int ,int*,int ,int) ;
 int kern_socket (struct thread*,int,int,int ) ;
 int linux_set_socket_flags (int,int*) ;
 int linux_to_bsd_domain (int ) ;

int
linux_socket(struct thread *td, struct linux_socket_args *args)
{
 int domain, retval_socket, type;

 type = args->type & LINUX_SOCK_TYPE_MASK;
 if (type < 0 || type > LINUX_SOCK_MAX)
  return (EINVAL);
 retval_socket = linux_set_socket_flags(args->type & ~LINUX_SOCK_TYPE_MASK,
  &type);
 if (retval_socket != 0)
  return (retval_socket);
 domain = linux_to_bsd_domain(args->domain);
 if (domain == -1)
  return (EAFNOSUPPORT);

 retval_socket = kern_socket(td, domain, type, args->protocol);
 if (retval_socket)
  return (retval_socket);

 if (type == SOCK_RAW
     && (args->protocol == IPPROTO_RAW || args->protocol == 0)
     && domain == PF_INET) {

  int hdrincl;

  hdrincl = 1;

  kern_setsockopt(td, td->td_retval[0], IPPROTO_IP, IP_HDRINCL,
      &hdrincl, UIO_SYSSPACE, sizeof(hdrincl));
 }
 return (retval_socket);
}
