
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ccreq {struct ccconn* conn; } ;
struct ccport {scalar_t__ admin; int cookies; } ;
struct ccconn {int dummy; } ;


 int CCFREE (struct ccreq*) ;
 scalar_t__ CCPORT_RUNNING ;
 int CONN_SIG_ERROR ;
 int CONN_SIG_OK ;
 int EINVAL ;
 int ENOTCONN ;
 int TAILQ_REMOVE (int *,struct ccreq*,int ) ;
 scalar_t__ UNIAPI_OK ;
 int cc_conn_resp (struct ccconn*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int cc_port_log (struct ccport*,char*,scalar_t__) ;
 struct ccreq* find_cookie (struct ccport*,scalar_t__) ;
 int link ;

int
cc_uni_response(struct ccport *port, u_int cookie, u_int reason, u_int state)
{
 struct ccconn *conn;
 struct ccreq *req;

 if (cookie == 0)
  return (EINVAL);

 if (port->admin != CCPORT_RUNNING)
  return (ENOTCONN);

 if ((req = find_cookie(port, cookie)) == ((void*)0)) {
  cc_port_log(port, "UNI response for unknown cookie %u", cookie);
  return (EINVAL);
 }
 conn = req->conn;

 TAILQ_REMOVE(&port->cookies, req, link);
 CCFREE(req);

 if (reason == UNIAPI_OK)
  return (cc_conn_resp(conn, CONN_SIG_OK,
      cookie, reason, state));
 else
  return (cc_conn_resp(conn, CONN_SIG_ERROR,
      cookie, reason, state));
}
