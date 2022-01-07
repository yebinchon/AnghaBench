
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmclog_parse_state {int ps_len; char* ps_data; scalar_t__ ps_buffer; } ;



int
pmclog_feed(void *cookie, char *data, int len)
{
 struct pmclog_parse_state *ps;

 ps = (struct pmclog_parse_state *) cookie;

 if (len < 0 ||
     ps->ps_buffer ||
     ps->ps_len != 0)
  return -1;

 ps->ps_data = data;
 ps->ps_len = len;

 return 0;
}
