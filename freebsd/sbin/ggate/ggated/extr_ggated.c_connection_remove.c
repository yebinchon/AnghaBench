
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggd_connection {int c_sendfd; int c_recvfd; struct ggd_connection* c_path; int c_srcip; } ;


 int LIST_REMOVE (struct ggd_connection*,int ) ;
 int LOG_DEBUG ;
 int c_next ;
 int close (int) ;
 int free (struct ggd_connection*) ;
 int g_gate_log (int ,char*,int ,struct ggd_connection*) ;
 int ip2str (int ) ;

__attribute__((used)) static void
connection_remove(struct ggd_connection *conn)
{

 LIST_REMOVE(conn, c_next);
 g_gate_log(LOG_DEBUG, "Connection removed [%s %s].",
     ip2str(conn->c_srcip), conn->c_path);
 if (conn->c_sendfd != -1)
  close(conn->c_sendfd);
 if (conn->c_recvfd != -1)
  close(conn->c_recvfd);
 free(conn->c_path);
 free(conn);
}
