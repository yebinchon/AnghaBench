
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_nl {int nl_family; } ;
struct sockaddr {int dummy; } ;
typedef int nladdr ;


 int AF_NETLINK ;
 int NETLINK_ROUTE ;
 int PF_NETLINK ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int memset (struct sockaddr_nl*,int ,int) ;
 int nl_close (int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
nl_open(void)
{
  struct sockaddr_nl nladdr;
  int sd;

  sd = socket(PF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
  if (sd < 0) return -1;
  memset(&nladdr, 0, sizeof(nladdr));
  nladdr.nl_family = AF_NETLINK;
  if (bind(sd, (struct sockaddr*)&nladdr, sizeof(nladdr)) < 0){
    nl_close(sd);
    return -1;
  }
  return sd;
}
