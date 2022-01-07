
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int dummy; } ;
struct in_addr {int s_addr; } ;


 int DEAD_TIME ;
 int INADDR_ANY ;
 int rad_add_server_ex (struct rad_handle*,char const*,int,char const*,int,int,int ,struct in_addr*) ;

int
rad_add_server(struct rad_handle *h, const char *host, int port,
    const char *secret, int timeout, int tries)
{
     struct in_addr bindto;
 bindto.s_addr = INADDR_ANY;

 return rad_add_server_ex(h, host, port, secret, timeout, tries,
  DEAD_TIME, &bindto);
}
