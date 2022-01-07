
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong_dest {int sockfd; int srqn; int send_psn; int send_qpn; int recv_qpn; int lid; int gid; } ;
typedef int gid ;
struct TYPE_2__ {struct pingpong_dest* rem_dest; } ;


 char* ADDR_FORMAT ;
 int AF_INET6 ;
 int MSG_SIZE ;
 int MSG_SSCAN ;
 TYPE_1__ ctx ;
 int fprintf (int ,char*,int,int,int) ;
 int inet_ntop (int ,int *,char*,int) ;
 int perror (char*) ;
 int printf (char*,char*,int ,int ,int ,int ,int ,char*) ;
 int read (int,char*,int) ;
 int sscanf (char*,int ,int *,int *,int *,int *,int *,char*) ;
 int stderr ;
 int wire_gid_to_gid (char*,int *) ;

__attribute__((used)) static int recv_remote_dest(int sockfd, int index)
{
 struct pingpong_dest *rem_dest;
 char msg[MSG_SIZE];
 char gid[33];
 int n = 0, r;

 while (n < MSG_SIZE) {
  r = read(sockfd, msg + n, MSG_SIZE - n);
  if (r < 0) {
   perror("client read");
   fprintf(stderr,
    "%d/%d: Couldn't read remote address [%d]\n",
    n, MSG_SIZE, index);
   return -1;
  }
  n += r;
 }

 rem_dest = &ctx.rem_dest[index];
 sscanf(msg, MSG_SSCAN, &rem_dest->lid, &rem_dest->recv_qpn,
  &rem_dest->send_qpn, &rem_dest->send_psn, &rem_dest->srqn, gid);

 wire_gid_to_gid(gid, &rem_dest->gid);
 inet_ntop(AF_INET6, &rem_dest->gid, gid, sizeof(gid));
 printf(ADDR_FORMAT, "remote", rem_dest->lid, rem_dest->recv_qpn,
  rem_dest->send_qpn, rem_dest->send_psn, rem_dest->srqn,
  gid);

 rem_dest->sockfd = sockfd;
 return 0;
}
