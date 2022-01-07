
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int dummy; } ;
struct ccconn {int dummy; } ;
typedef enum conn_sig { ____Placeholder_conn_sig } conn_sig ;


 int sig_conn (struct ccconn*,int,int ,struct uni_msg*) ;

int
cc_conn_sig_msg(struct ccconn *conn, enum conn_sig sig, struct uni_msg *msg)
{

 return (sig_conn(conn, sig, (msg != ((void*)0)), msg));
}
