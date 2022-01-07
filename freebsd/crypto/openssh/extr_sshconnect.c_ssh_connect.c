
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct ssh {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct addrinfo {int dummy; } ;
struct TYPE_2__ {int * proxy_command; scalar_t__ proxy_use_fdpass; } ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 TYPE_1__ options ;
 int ssh_connect_direct (struct ssh*,char const*,struct addrinfo*,struct sockaddr_storage*,int ,int,int,int*,int) ;
 int * ssh_packet_set_connection (struct ssh*,int ,int ) ;
 int ssh_proxy_connect (struct ssh*,char const*,int ,int *) ;
 int ssh_proxy_fdpass_connect (struct ssh*,char const*,int ,int *) ;
 scalar_t__ strcmp (int *,char*) ;

int
ssh_connect(struct ssh *ssh, const char *host, struct addrinfo *addrs,
    struct sockaddr_storage *hostaddr, u_short port, int family,
    int connection_attempts, int *timeout_ms, int want_keepalive)
{
 if (options.proxy_command == ((void*)0)) {
  return ssh_connect_direct(ssh, host, addrs, hostaddr, port,
      family, connection_attempts, timeout_ms, want_keepalive);
 } else if (strcmp(options.proxy_command, "-") == 0) {
  if ((ssh_packet_set_connection(ssh,
      STDIN_FILENO, STDOUT_FILENO)) == ((void*)0))
   return -1;
  return 0;
 } else if (options.proxy_use_fdpass) {
  return ssh_proxy_fdpass_connect(ssh, host, port,
      options.proxy_command);
 }
 return ssh_proxy_connect(ssh, host, port, options.proxy_command);
}
