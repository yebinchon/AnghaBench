
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccconn {int state; TYPE_1__* cc; } ;
typedef enum conn_state { ____Placeholder_conn_state } conn_state ;
struct TYPE_2__ {int log; } ;


 int CCLOG_CONN_STATE ;
 int cc_conn_log (struct ccconn*,char*,int ,int ) ;
 int * stab ;

void
cc_conn_set_state(struct ccconn *conn, enum conn_state ns)
{
 if (conn->state != ns) {
  if (conn->cc->log & CCLOG_CONN_STATE)
   cc_conn_log(conn, "%s -> %s",
       stab[conn->state], stab[ns]);
  conn->state = ns;
 }
}
