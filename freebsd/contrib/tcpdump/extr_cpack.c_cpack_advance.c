
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpack_state {scalar_t__ c_next; scalar_t__ c_buf; scalar_t__ c_len; } ;



int
cpack_advance(struct cpack_state *cs, const size_t toskip)
{

 if (cs->c_next - cs->c_buf + toskip > cs->c_len)
  return -1;
 cs->c_next += toskip;
 return 0;
}
