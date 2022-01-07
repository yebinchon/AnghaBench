
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctx_query {TYPE_1__* w; } ;
typedef int sldns_buffer ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_2__ {int base; } ;


 int comm_base_exit (int ) ;
 int libworker_fillup_fg (struct ctx_query*,int,int *,int,char*,int) ;

void
libworker_fg_done_cb(void* arg, int rcode, sldns_buffer* buf, enum sec_status s,
 char* why_bogus, int was_ratelimited)
{
 struct ctx_query* q = (struct ctx_query*)arg;

 comm_base_exit(q->w->base);

 libworker_fillup_fg(q, rcode, buf, s, why_bogus, was_ratelimited);
}
