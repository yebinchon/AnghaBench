
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccconn {int dummy; } ;
typedef enum conn_sig { ____Placeholder_conn_sig } conn_sig ;


 int sig_conn (struct ccconn*,int,int ,void*) ;

int
cc_conn_sig(struct ccconn *conn, enum conn_sig sig, void *arg1)
{

 return (sig_conn(conn, sig, 0, arg1));
}
