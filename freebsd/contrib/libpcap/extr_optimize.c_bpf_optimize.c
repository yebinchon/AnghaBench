
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icode {int root; } ;
typedef int opt_state_t ;
typedef int compiler_state_t ;


 int intern_blocks (int *,struct icode*) ;
 int opt_cleanup (int *) ;
 int opt_dump (int *,struct icode*) ;
 int opt_init (int *,int *,struct icode*) ;
 int opt_loop (int *,int *,struct icode*,int) ;
 int opt_root (int *) ;
 int pcap_optimizer_debug ;
 scalar_t__ pcap_print_dot_graph ;
 int printf (char*) ;

void
bpf_optimize(compiler_state_t *cstate, struct icode *ic)
{
 opt_state_t opt_state;

 opt_init(cstate, &opt_state, ic);
 opt_loop(cstate, &opt_state, ic, 0);
 opt_loop(cstate, &opt_state, ic, 1);
 intern_blocks(&opt_state, ic);






 opt_root(&ic->root);






 opt_cleanup(&opt_state);
}
