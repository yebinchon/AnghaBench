
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct svnadmin_opt_state {int end_revision; int start_revision; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int optrev_to_revnum (scalar_t__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
get_load_range(svn_revnum_t *lower,
               svn_revnum_t *upper,
               struct svnadmin_opt_state *opt_state)
{


  SVN_ERR(optrev_to_revnum(lower, &opt_state->start_revision));
  SVN_ERR(optrev_to_revnum(upper, &opt_state->end_revision));


  if ((*upper == SVN_INVALID_REVNUM) && (*lower != SVN_INVALID_REVNUM))
    {
      *upper = *lower;
    }
  else if ((*upper != SVN_INVALID_REVNUM) && (*lower == SVN_INVALID_REVNUM))
    {
      *lower = *upper;
    }


  if (*lower > *upper)
    {
      return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                              _("First revision cannot be higher than second"));
    }

  return SVN_NO_ERROR;
}
