
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {int number; } ;
struct TYPE_5__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int svn_error_t ;


 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_opt_revision_number ;
 scalar_t__ svn_opt_revision_unspecified ;

__attribute__((used)) static svn_error_t *
optrev_to_revnum(svn_revnum_t *revnum, const svn_opt_revision_t *opt_rev)
{
  if (opt_rev->kind == svn_opt_revision_number)
    {
      *revnum = opt_rev->value.number;
      if (! SVN_IS_VALID_REVNUM(*revnum))
        return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                                 _("Invalid revision number (%ld) specified"),
                                 *revnum);
    }
  else if (opt_rev->kind == svn_opt_revision_unspecified)
    {
      *revnum = SVN_INVALID_REVNUM;
    }
  else
    {
      return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                              _("Non-numeric revision specified"));
    }
  return SVN_NO_ERROR;
}
