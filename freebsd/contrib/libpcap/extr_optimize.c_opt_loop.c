
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct icode {int root; } ;
struct TYPE_9__ {int done; } ;
typedef TYPE_1__ opt_state_t ;
typedef int compiler_state_t ;


 int find_closure (TYPE_1__*,int ) ;
 int find_dom (TYPE_1__*,int ) ;
 int find_edom (TYPE_1__*,int ) ;
 int find_levels (TYPE_1__*,struct icode*) ;
 int find_ud (TYPE_1__*,int ) ;
 int opt_blks (int *,TYPE_1__*,struct icode*,int) ;
 int opt_dump (int *,struct icode*) ;
 int pcap_optimizer_debug ;
 scalar_t__ pcap_print_dot_graph ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
opt_loop(compiler_state_t *cstate, opt_state_t *opt_state, struct icode *ic,
    int do_stmts)
{







 do {
  opt_state->done = 1;
  find_levels(opt_state, ic);
  find_dom(opt_state, ic->root);
  find_closure(opt_state, ic->root);
  find_ud(opt_state, ic->root);
  find_edom(opt_state, ic->root);
  opt_blks(cstate, opt_state, ic, do_stmts);






 } while (!opt_state->done);
}
