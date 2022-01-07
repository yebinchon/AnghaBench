
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svnlook_ctxt_t ;
typedef int svn_error_t ;
struct svnlook_opt_state {int show_inherited_props; int verbose; int * arg2; scalar_t__ revprop; int * arg1; } ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ ind; scalar_t__ argc; } ;
typedef TYPE_1__ apr_getopt_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int SVN_ERR_CL_INSUFFICIENT_ARGS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int do_pget (int *,int *,int *,int ,int ,int *) ;
 int get_ctxt_baton (int **,struct svnlook_opt_state*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
subcommand_pget(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnlook_opt_state *opt_state = baton;
  svnlook_ctxt_t *c;

  if (opt_state->arg1 == ((void*)0))
    {
      return svn_error_createf
        (SVN_ERR_CL_INSUFFICIENT_ARGS, ((void*)0),
         opt_state->revprop ? _("Missing propname argument") :
         _("Missing propname and repository path arguments"));
    }
  else if (!opt_state->revprop && opt_state->arg2 == ((void*)0))
    {
      return svn_error_create
        (SVN_ERR_CL_INSUFFICIENT_ARGS, ((void*)0),
         _("Missing propname or repository path argument"));
    }
  if ((opt_state->revprop && opt_state->arg2 != ((void*)0))
      || os->ind < os->argc)
    return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                            _("Too many arguments given"));

  SVN_ERR(get_ctxt_baton(&c, opt_state, pool));
  SVN_ERR(do_pget(c, opt_state->arg1,
                  opt_state->revprop ? ((void*)0) : opt_state->arg2,
                  opt_state->verbose, opt_state->show_inherited_props,
                  pool));
  return SVN_NO_ERROR;
}
