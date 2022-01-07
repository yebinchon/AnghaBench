
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct uni_msg {int dummy; } ;
struct ccreq {scalar_t__ cookie; struct ccconn* conn; int req; } ;
struct ccconn {TYPE_3__* port; } ;
struct TYPE_6__ {int uarg; TYPE_2__* cc; int cookies; } ;
struct TYPE_5__ {scalar_t__ cookie; TYPE_1__* funcs; } ;
struct TYPE_4__ {int (* send_uni ) (struct ccconn*,int ,int ,scalar_t__,struct uni_msg*) ;} ;


 struct ccreq* CCZALLOC (int) ;
 int TAILQ_INSERT_TAIL (int *,struct ccreq*,int ) ;
 int cc_conn_log (struct ccconn*,char*,int ) ;
 int link ;
 int stub1 (struct ccconn*,int ,int ,scalar_t__,struct uni_msg*) ;
 int uni_msg_destroy (struct uni_msg*) ;

__attribute__((used)) static void
cc_send_uni(struct ccconn *conn, u_int op, struct uni_msg *msg)
{
 struct ccreq *r;

 r = CCZALLOC(sizeof(*r));
 if (r == ((void*)0)) {
  if (msg != ((void*)0))
   uni_msg_destroy(msg);
  cc_conn_log(conn, "no memory for cookie op=%u", op);
  return;
 }

 if ((r->cookie = ++conn->port->cc->cookie) == 0)
  r->cookie = ++conn->port->cc->cookie;
 r->req = op;
 r->conn = conn;

 TAILQ_INSERT_TAIL(&conn->port->cookies, r, link);

 conn->port->cc->funcs->send_uni(conn, conn->port->uarg, op,
     r->cookie, msg);
}
