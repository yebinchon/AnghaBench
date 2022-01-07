
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ip_list {int len; int addr; } ;
typedef int socklen_t ;


 int AF_INET ;
 int AF_INET6 ;
 int SOCK_STREAM ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 int fd_close (int) ;
 int print_sock_err (char*) ;
 int socket (int ,int ,int ) ;
 int verb_addr (char*,struct ip_list*) ;

__attribute__((used)) static int
connect_to_ip(struct ip_list* ip)
{
 int fd;
 verb_addr("connect to", ip);
 fd = socket(ip->len==(socklen_t)sizeof(struct sockaddr_in)?
  AF_INET:AF_INET6, SOCK_STREAM, 0);
 if(fd == -1) {
  print_sock_err("socket");
  return -1;
 }
 if(connect(fd, (struct sockaddr*)&ip->addr, ip->len) < 0) {
  print_sock_err("connect");
  fd_close(fd);
  return -1;
 }
 return fd;
}
