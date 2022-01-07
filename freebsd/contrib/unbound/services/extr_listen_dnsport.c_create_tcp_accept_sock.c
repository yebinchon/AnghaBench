
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; scalar_t__ ai_addr; int ai_socktype; } ;
typedef int socklen_t ;
typedef int qlen ;
typedef int on ;
typedef int mss ;


 scalar_t__ AF_INET6 ;
 scalar_t__ EAFNOSUPPORT ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOPROTOOPT ;
 scalar_t__ EPERM ;
 scalar_t__ EPROTONOSUPPORT ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_BINDANY ;
 int IPV6_V6ONLY ;
 int IP_BINDANY ;
 int IP_FREEBIND ;
 int IP_TRANSPARENT ;
 int SOL_SOCKET ;
 int SO_BINDANY ;
 int SO_REUSEADDR ;
 int SO_REUSEPORT ;
 int TCP_BACKLOG ;
 int TCP_FASTOPEN ;
 int TCP_MAXSEG ;
 int VERB_ALGO ;
 scalar_t__ WSAEAFNOSUPPORT ;
 scalar_t__ WSAEPROTONOSUPPORT ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ bind (int,scalar_t__,int ) ;
 int close (int) ;
 int closesocket (int) ;
 scalar_t__ errno ;
 int fd_set_nonblock (int) ;
 int listen (int,int ) ;
 int log_err (char*,int ) ;
 int log_err_addr (char*,int ,struct sockaddr_storage*,int ) ;
 int log_warn (char*,...) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (scalar_t__,int ,int ) ;
 int strerror (scalar_t__) ;
 int systemd_get_activated (scalar_t__,int ,int,scalar_t__,int ,int *) ;
 int verbose (int ,char*,int) ;
 int verbose_print_addr (struct addrinfo*) ;
 int verbosity ;
 int wsa_strerror (scalar_t__) ;

int
create_tcp_accept_sock(struct addrinfo *addr, int v6only, int* noproto,
 int* reuseport, int transparent, int mss, int freebind, int use_systemd)
{
 int s;
 (void)transparent;


 (void)freebind;

 verbose_print_addr(addr);
 *noproto = 0;







 (void)use_systemd;

 if((s = socket(addr->ai_family, addr->ai_socktype, 0)) == -1) {

  if(errno == EAFNOSUPPORT || errno == EPROTONOSUPPORT) {
   *noproto = 1;
   return -1;
  }
  log_err("can't create socket: %s", strerror(errno));
  return -1;
 }
 if (mss > 0) {
  log_warn(" setsockopt(TCP_MAXSEG) unsupported");

 }
 (void)reuseport;
 (void)v6only;
 if(



        bind(s, addr->ai_addr, addr->ai_addrlen) != 0) {


  if(addr->ai_family==AF_INET6 && errno==EINVAL)
   *noproto = 1;
  else {
   log_err_addr("can't bind socket", strerror(errno),
    (struct sockaddr_storage*)addr->ai_addr,
    addr->ai_addrlen);
  }
  close(s);







  return -1;
 }
 if(!fd_set_nonblock(s)) {

  close(s);



  return -1;
 }
 if(listen(s, TCP_BACKLOG) == -1) {

  log_err("can't listen: %s", strerror(errno));
  close(s);




  return -1;
 }
 return s;
}
