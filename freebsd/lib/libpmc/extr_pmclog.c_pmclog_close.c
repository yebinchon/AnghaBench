
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_parse_state {struct pmclog_parse_state* ps_buffer; } ;


 int free (struct pmclog_parse_state*) ;

void
pmclog_close(void *cookie)
{
 struct pmclog_parse_state *ps;

 ps = (struct pmclog_parse_state *) cookie;

 if (ps->ps_buffer)
  free(ps->ps_buffer);

 free(ps);
}
