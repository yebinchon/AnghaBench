
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct svnlook_opt_state {int * arg1; int * arg2; } ;


 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int SVN_ERR_CL_INSUFFICIENT_ARGS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
check_number_of_args(struct svnlook_opt_state *opt_state,
                     int num_args)
{
  if ((num_args == 0 && opt_state->arg1 != ((void*)0))
      || (num_args == 1 && opt_state->arg2 != ((void*)0)))
    return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                            _("Too many arguments given"));
  if ((num_args == 1 && opt_state->arg1 == ((void*)0)))
    return svn_error_create(SVN_ERR_CL_INSUFFICIENT_ARGS, ((void*)0),
                            _("Missing repository path argument"));
  return SVN_NO_ERROR;
}
