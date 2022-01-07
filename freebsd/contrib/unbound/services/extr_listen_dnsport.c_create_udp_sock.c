
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int snd ;
typedef int rcv ;
typedef int on ;
typedef int off ;
typedef int mtu ;
typedef int got ;
typedef int action ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ EACCES ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ EADDRNOTAVAIL ;
 scalar_t__ EAFNOSUPPORT ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOPROTOOPT ;
 scalar_t__ ENOSYS ;
 scalar_t__ EPERM ;
 scalar_t__ EPROTONOSUPPORT ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_BINDANY ;
 int IPV6_MIN_MTU ;
 int IPV6_MTU ;
 int IPV6_USE_MIN_MTU ;
 int IPV6_V6ONLY ;
 int IP_BINDANY ;
 int IP_DONTFRAG ;
 int IP_FREEBIND ;
 int IP_MTU_DISCOVER ;
 int IP_PMTUDISC_DONT ;
 int IP_PMTUDISC_OMIT ;
 int IP_TRANSPARENT ;
 int SOL_SOCKET ;
 int SO_BINDANY ;
 int SO_RCVBUF ;
 int SO_RCVBUFFORCE ;
 int SO_REUSEADDR ;
 int SO_REUSEPORT ;
 int SO_REUSEPORT_LB ;
 int SO_SNDBUF ;
 int SO_SNDBUFFORCE ;
 scalar_t__ WSAEACCES ;
 scalar_t__ WSAEADDRINUSE ;
 scalar_t__ WSAEADDRNOTAVAIL ;
 scalar_t__ WSAEAFNOSUPPORT ;
 scalar_t__ WSAEPROTONOSUPPORT ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 int closesocket (int) ;
 scalar_t__ errno ;
 int fd_set_nonblock (int) ;
 scalar_t__ getsockopt (int,int ,int ,void*,int *) ;
 int log_err (char*,int ) ;
 int log_err_addr (char*,int ,struct sockaddr_storage*,int ) ;
 int log_warn (char*,...) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int ) ;
 int socket (int,int,int ) ;
 int strerror (scalar_t__) ;
 int systemd_get_activated (int,int,int,struct sockaddr*,int ,int *) ;
 int verbosity ;
 int wsa_strerror (scalar_t__) ;

int
create_udp_sock(int family, int socktype, struct sockaddr* addr,
        socklen_t addrlen, int v6only, int* inuse, int* noproto,
 int rcv, int snd, int listen, int* reuseport, int transparent,
 int freebind, int use_systemd)
{
 int s;







 (void)rcv;


 (void)snd;


 (void)v6only;


 (void)transparent;


 (void)freebind;
 (void)use_systemd;

 if((s = socket(family, socktype, 0)) == -1) {
  *inuse = 0;

  if(errno == EAFNOSUPPORT || errno == EPROTONOSUPPORT) {
   *noproto = 1;
   return -1;
  }
  log_err("can't create socket: %s", strerror(errno));
  *noproto = 0;
  return -1;
 }





 if(listen) {
  (void)reuseport;
 }
 if(rcv) {
 }

 if(snd) {
 }
 if(family == AF_INET6) {
 } else if(family == AF_INET) {
 }
 if(



  bind(s, (struct sockaddr*)addr, addrlen) != 0) {
  *noproto = 0;
  *inuse = 0;
  close(s);
  return -1;
 }
 if(!fd_set_nonblock(s)) {
  *noproto = 0;
  *inuse = 0;

  close(s);



  return -1;
 }
 return s;
}
