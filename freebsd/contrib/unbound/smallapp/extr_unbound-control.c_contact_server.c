
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usock ;
struct sockaddr_un {unsigned int sun_len; int sun_path; void* sun_family; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* first; } ;
struct config_file {int control_port; scalar_t__ do_ip4; TYPE_2__ control_ifs; } ;
typedef scalar_t__ socklen_t ;
struct TYPE_3__ {char* str; } ;


 void* AF_LOCAL ;
 int ECONNREFUSED ;
 int IPPROTO_TCP ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_STREAM ;
 int WSAECONNREFUSED ;
 int WSAGetLastError () ;
 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,scalar_t__) ;
 scalar_t__ connect (int,struct sockaddr*,scalar_t__) ;
 int errno ;
 int exit (int) ;
 int extstrtoaddr (char const*,struct sockaddr_storage*,scalar_t__*) ;
 int fatal_exit (char*,char const*) ;
 int ipstrtoaddr (char const*,int ,struct sockaddr_storage*,scalar_t__*) ;
 int log_err (char*,char const*,char const*) ;
 int log_err_addr (char*,char const*,struct sockaddr_storage*,scalar_t__) ;
 int printf (char*) ;
 int socket (int,int ,int) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char const* strerror (int) ;
 int strlcpy (int ,char const*,int) ;
 char const* wsa_strerror (int) ;

__attribute__((used)) static int
contact_server(const char* svr, struct config_file* cfg, int statuscmd)
{
 struct sockaddr_storage addr;
 socklen_t addrlen;
 int addrfamily = 0, proto = IPPROTO_TCP;
 int fd, useport = 1;

 if(!svr) {
  if(cfg->control_ifs.first) {
   svr = cfg->control_ifs.first->str;
  } else if(cfg->do_ip4) {
   svr = "127.0.0.1";
  } else {
   svr = "::1";
  }

  if(strcmp(svr, "0.0.0.0") == 0)
   svr = "127.0.0.1";
  else if(strcmp(svr, "::0") == 0 ||
   strcmp(svr, "0::0") == 0 ||
   strcmp(svr, "0::") == 0 ||
   strcmp(svr, "::") == 0)
   svr = "::1";
 }
 if(strchr(svr, '@')) {
  if(!extstrtoaddr(svr, &addr, &addrlen))
   fatal_exit("could not parse IP@port: %s", svr);
 } else {
  if(!ipstrtoaddr(svr, cfg->control_port, &addr, &addrlen))
   fatal_exit("could not parse IP: %s", svr);
 }

 if(addrfamily == 0)
  addrfamily = addr_is_ip6(&addr, addrlen)?PF_INET6:PF_INET;
 fd = socket(addrfamily, SOCK_STREAM, proto);
 if(fd == -1) {

  fatal_exit("socket: %s", strerror(errno));



 }
 if(connect(fd, (struct sockaddr*)&addr, addrlen) < 0) {

  int err = errno;
  if(!useport) log_err("connect: %s for %s", strerror(err), svr);
  else log_err_addr("connect", strerror(err), &addr, addrlen);
  if(err == ECONNREFUSED && statuscmd) {
   printf("unbound is stopped\n");
   exit(3);
  }
  exit(1);
 }
 return fd;
}
