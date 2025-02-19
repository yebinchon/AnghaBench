
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ggd_connection {int c_sendfd; int c_recvfd; int c_path; } ;
struct g_gate_cinit {int gc_flags; } ;
typedef int in_addr_t ;


 int EEXIST ;
 int GGATE_FLAG_SEND ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 int g_gate_log (int ,char*,int ,int ) ;
 int htonl (int ) ;
 int ip2str (int ) ;

__attribute__((used)) static int
connection_add(struct ggd_connection *conn, struct g_gate_cinit *cinit,
    struct sockaddr *s, int sfd)
{
 in_addr_t ip;

 ip = htonl(((struct sockaddr_in *)(void *)s)->sin_addr.s_addr);
 if ((cinit->gc_flags & GGATE_FLAG_SEND) != 0) {
  if (conn->c_sendfd != -1) {
   g_gate_log(LOG_WARNING,
       "Send socket already exists [%s, %s].", ip2str(ip),
       conn->c_path);
   return (EEXIST);
  }
  conn->c_sendfd = sfd;
 } else {
  if (conn->c_recvfd != -1) {
   g_gate_log(LOG_WARNING,
       "Receive socket already exists [%s, %s].",
       ip2str(ip), conn->c_path);
   return (EEXIST);
  }
  conn->c_recvfd = sfd;
 }
 g_gate_log(LOG_DEBUG, "Connection added [%s, %s].", ip2str(ip),
     conn->c_path);
 return (0);
}
