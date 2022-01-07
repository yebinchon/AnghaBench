
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svnlook_ctxt_t ;
typedef int svn_error_t ;
struct svnlook_opt_state {char* arg1; int non_recursive; int full_paths; int show_ids; int * arg2; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int do_tree (int *,char*,int ,int ,int,int *) ;
 int get_ctxt_baton (int **,struct svnlook_opt_state*,int *) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
subcommand_tree(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnlook_opt_state *opt_state = baton;
  svnlook_ctxt_t *c;

  if (opt_state->arg2 != ((void*)0))
    return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                            _("Too many arguments given"));

  SVN_ERR(get_ctxt_baton(&c, opt_state, pool));
  SVN_ERR(do_tree(c, opt_state->arg1 ? opt_state->arg1 : "",
                  opt_state->show_ids, opt_state->full_paths,
                  ! opt_state->non_recursive, pool));
  return SVN_NO_ERROR;
}
