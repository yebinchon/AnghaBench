
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svnlook_ctxt_t ;
typedef int svn_error_t ;
struct svnlook_opt_state {int show_inherited_props; int xml; int verbose; int * arg1; scalar_t__ revprop; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_number_of_args (struct svnlook_opt_state*,int) ;
 int do_plist (int *,int *,int ,int ,int ,int *) ;
 int get_ctxt_baton (int **,struct svnlook_opt_state*,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_plist(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnlook_opt_state *opt_state = baton;
  svnlook_ctxt_t *c;

  SVN_ERR(check_number_of_args(opt_state, opt_state->revprop ? 0 : 1));

  SVN_ERR(get_ctxt_baton(&c, opt_state, pool));
  SVN_ERR(do_plist(c, opt_state->revprop ? ((void*)0) : opt_state->arg1,
                   opt_state->verbose, opt_state->xml,
                   opt_state->show_inherited_props, pool));
  return SVN_NO_ERROR;
}
