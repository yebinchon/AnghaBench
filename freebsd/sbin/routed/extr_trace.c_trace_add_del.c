
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_entry {int rt_state; int rt_ifp; int rt_spares; int rt_gate; int rt_mask; int rt_dst; } ;


 int AGE_RT (int ,int ) ;
 int fprintf (int *,char*,char const*,char*) ;
 int fputc (char,int *) ;
 int * ftrace ;
 int lastlog () ;
 int print_rts (int ,int ,int ,int ,int ,int ) ;
 int rs_bits ;
 char* rtname (int ,int ,int ) ;
 int trace_bits (int ,int ,int ) ;

void
trace_add_del(const char * action, struct rt_entry *rt)
{
 if (ftrace == ((void*)0))
  return;

 lastlog();
 (void)fprintf(ftrace, "%s    %-35s ",
        action,
        rtname(rt->rt_dst, rt->rt_mask, rt->rt_gate));
 print_rts(rt->rt_spares, 0,0,0,0,AGE_RT(rt->rt_state,rt->rt_ifp));
 trace_bits(rs_bits, rt->rt_state, 0);
 (void)fputc('\n',ftrace);
}
