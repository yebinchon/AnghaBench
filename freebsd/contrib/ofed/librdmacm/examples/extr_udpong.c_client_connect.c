
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
struct TYPE_3__ {int op; } ;


 int CTRL_MSG_SIZE ;
 int SOCK_DGRAM ;
 int client_send_recv (TYPE_1__*,int,int) ;
 int dst_addr ;
 int freeaddrinfo (struct addrinfo*) ;
 TYPE_1__ g_msg ;
 char* gai_strerror (int) ;
 int getaddrinfo (int ,int ,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int msg_op_login ;
 int perror (char*) ;
 int port ;
 int printf (char*,char*) ;
 int rs ;
 int rs_close (int) ;
 int rs_connect (int,int ,int ) ;
 int rs_socket (int ,int ,int ) ;
 int set_options (int) ;

__attribute__((used)) static int client_connect(void)
{
 struct addrinfo hints, *res;
 int ret;

 memset(&hints, 0, sizeof hints);
 hints.ai_socktype = SOCK_DGRAM;
  ret = getaddrinfo(dst_addr, port, &hints, &res);
 if (ret) {
  printf("getaddrinfo: %s\n", gai_strerror(ret));
  return ret;
 }

 rs = rs_socket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (rs < 0) {
  perror("rsocket");
  ret = rs;
  goto out;
 }

 set_options(rs);
 ret = rs_connect(rs, res->ai_addr, res->ai_addrlen);
 if (ret) {
  perror("rconnect");
  rs_close(rs);
  goto out;
 }

 g_msg.op = msg_op_login;
 ret = client_send_recv(&g_msg, CTRL_MSG_SIZE, 1000);
 if (ret == CTRL_MSG_SIZE)
  ret = 0;

out:
 freeaddrinfo(res);
 return ret;
}
