
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct ccsig {int dummy; } ;
struct ccconn {TYPE_1__* cc; } ;
typedef enum conn_sig { ____Placeholder_conn_sig } conn_sig ;
struct TYPE_3__ {int sigs; } ;


 int ENOMEM ;
 int SIG_CONN ;
 int TAILQ_INSERT_TAIL (int *,struct ccsig*,int ) ;
 int * cc_conn_sigtab ;
 int cc_sig_log (TYPE_1__*,char*,int ,struct ccconn*) ;
 int link ;
 struct ccsig* sig_alloc (TYPE_1__*,int ,struct ccconn*,int ,int,struct uni_msg*,int ) ;

int
cc_conn_sig_msg_nodef(struct ccconn *conn, enum conn_sig sig,
    struct uni_msg *msg)
{
 struct ccsig *s;

 s = sig_alloc(conn->cc, SIG_CONN, conn, (msg != ((void*)0)), sig, msg, 0);
 if (s == ((void*)0))
  return (ENOMEM);

 TAILQ_INSERT_TAIL(&conn->cc->sigs, s, link);
 cc_sig_log(conn->cc, "queuing sig %s to conn %p",
     cc_conn_sigtab[sig], conn);

 return (0);
}
