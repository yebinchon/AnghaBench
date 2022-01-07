
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ggd_connection {int c_sendfd; int c_recvfd; int c_flags; int * c_path; int c_birthtime; scalar_t__ c_sectorsize; scalar_t__ c_mediasize; int c_srcip; int c_token; } ;
struct g_gate_cinit {int gc_flags; int gc_token; int gc_path; } ;
typedef int in_addr_t ;


 int GGATE_FLAG_SEND ;
 int LIST_INSERT_HEAD (int *,struct ggd_connection*,int ) ;
 int LOG_DEBUG ;
 int c_next ;
 int connection_cleanups () ;
 int connections ;
 int free (struct ggd_connection*) ;
 int g_gate_log (int ,char*,int ,int *) ;
 int htonl (int ) ;
 int ip2str (int ) ;
 struct ggd_connection* malloc (int) ;
 int * strdup (int ) ;
 int time (int *) ;

__attribute__((used)) static struct ggd_connection *
connection_new(struct g_gate_cinit *cinit, struct sockaddr *s, int sfd)
{
 struct ggd_connection *conn;
 in_addr_t ip;







 connection_cleanups();

 conn = malloc(sizeof(*conn));
 if (conn == ((void*)0))
  return (((void*)0));
 conn->c_path = strdup(cinit->gc_path);
 if (conn->c_path == ((void*)0)) {
  free(conn);
  return (((void*)0));
 }
 conn->c_token = cinit->gc_token;
 ip = htonl(((struct sockaddr_in *)(void *)s)->sin_addr.s_addr);
 conn->c_srcip = ip;
 conn->c_sendfd = conn->c_recvfd = -1;
 if ((cinit->gc_flags & GGATE_FLAG_SEND) != 0)
  conn->c_sendfd = sfd;
 else
  conn->c_recvfd = sfd;
 conn->c_mediasize = 0;
 conn->c_sectorsize = 0;
 time(&conn->c_birthtime);
 conn->c_flags = cinit->gc_flags;
 LIST_INSERT_HEAD(&connections, conn, c_next);
 g_gate_log(LOG_DEBUG, "Connection created [%s, %s].", ip2str(ip),
     conn->c_path);
 return (conn);
}
