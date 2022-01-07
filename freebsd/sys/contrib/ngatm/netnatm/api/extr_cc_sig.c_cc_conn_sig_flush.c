
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccconn {int cc; } ;


 int SIG_CONN ;
 int cc_sig_log (int ,char*,struct ccconn*) ;
 int sig_flush (int ,int ,struct ccconn*) ;

void
cc_conn_sig_flush(struct ccconn *conn)
{

 cc_sig_log(conn->cc, "flushing signals to conn %p", conn);
 sig_flush(conn->cc, SIG_CONN, conn);
}
