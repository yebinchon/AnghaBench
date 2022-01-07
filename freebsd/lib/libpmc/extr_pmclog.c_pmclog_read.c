
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_parse_state {scalar_t__ ps_state; scalar_t__ ps_len; int ps_fd; int ps_data; int ps_buffer; } ;
struct pmclog_ev {scalar_t__ pl_state; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ PL_STATE_ERROR ;
 int PMCLOG_BUFFER_SIZE ;
 scalar_t__ PMCLOG_EOF ;
 void* PMCLOG_ERROR ;
 int PMCLOG_FD_NONE ;
 scalar_t__ PMCLOG_REQUIRE_DATA ;
 int assert (int) ;
 scalar_t__ errno ;
 int pmclog_get_event (struct pmclog_parse_state*,int *,scalar_t__*,struct pmclog_ev*) ;
 scalar_t__ read (int,int ,int ) ;

int
pmclog_read(void *cookie, struct pmclog_ev *ev)
{
 int retval;
 ssize_t nread;
 struct pmclog_parse_state *ps;

 ps = (struct pmclog_parse_state *) cookie;

 if (ps->ps_state == PL_STATE_ERROR) {
  ev->pl_state = PMCLOG_ERROR;
  return -1;
 }





 if (ps->ps_len == 0) {
  ev->pl_state = PMCLOG_REQUIRE_DATA;







  if (ps->ps_fd != PMCLOG_FD_NONE) {
  refill:
   nread = read(ps->ps_fd, ps->ps_buffer,
       PMCLOG_BUFFER_SIZE);

   if (nread <= 0) {
    if (nread == 0)
     ev->pl_state = PMCLOG_EOF;
    else if (errno != EAGAIN)
     ev->pl_state = PMCLOG_ERROR;
    return -1;
   }

   ps->ps_len = nread;
   ps->ps_data = ps->ps_buffer;
  } else {
   return -1;
  }
 }

 assert(ps->ps_len > 0);



 retval = pmclog_get_event(ps, &ps->ps_data, &ps->ps_len, ev);




 if (retval < 0 && ev->pl_state == PMCLOG_REQUIRE_DATA &&
     ps->ps_fd != -1) {
  assert(ps->ps_len == 0);
  goto refill;
 }

 return retval;
}
