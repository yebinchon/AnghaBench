
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ctx_query {int msg_security; TYPE_2__* w; TYPE_3__* res; int msg; int msg_len; } ;
typedef int sldns_buffer ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_6__ {int was_ratelimited; int rcode; int why_bogus; } ;
struct TYPE_5__ {TYPE_1__* env; } ;
struct TYPE_4__ {int scratch; } ;


 int LDNS_RCODE_SERVFAIL ;
 int libworker_enter_result (TYPE_3__*,int *,int ,int) ;
 int memdup (int ,int ) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_limit (int *) ;
 int strdup (char*) ;

__attribute__((used)) static void
libworker_fillup_fg(struct ctx_query* q, int rcode, sldns_buffer* buf,
 enum sec_status s, char* why_bogus, int was_ratelimited)
{
 q->res->was_ratelimited = was_ratelimited;
 if(why_bogus)
  q->res->why_bogus = strdup(why_bogus);
 if(rcode != 0) {
  q->res->rcode = rcode;
  q->msg_security = s;
  return;
 }

 q->res->rcode = LDNS_RCODE_SERVFAIL;
 q->msg_security = 0;
 q->msg = memdup(sldns_buffer_begin(buf), sldns_buffer_limit(buf));
 q->msg_len = sldns_buffer_limit(buf);
 if(!q->msg) {
  return;
 }


 q->msg_security = s;
 libworker_enter_result(q->res, buf, q->w->env->scratch, s);
}
