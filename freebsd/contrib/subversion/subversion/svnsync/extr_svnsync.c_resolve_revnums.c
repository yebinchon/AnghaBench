
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int number; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int svn_error_t ;


 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_unspecified ;

__attribute__((used)) static svn_error_t *
resolve_revnums(svn_revnum_t *start_revnum,
                svn_revnum_t *end_revnum,
                svn_opt_revision_t start_revision,
                svn_opt_revision_t end_revision)
{
  svn_revnum_t start_rev, end_rev;



  if ((start_revision.kind == svn_opt_revision_unspecified) &&
      (end_revision.kind == svn_opt_revision_unspecified))
    {
      *start_revnum = 0;
      *end_revnum = SVN_INVALID_REVNUM;
      return SVN_NO_ERROR;
    }



  if (start_revision.kind == svn_opt_revision_head)
    {
      start_rev = SVN_INVALID_REVNUM;
    }
  else
    {
      start_rev = start_revision.value.number;
      if (! SVN_IS_VALID_REVNUM(start_rev))
        return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                                 _("Invalid revision number (%ld)"),
                                 start_rev);
    }




  if (end_revision.kind == svn_opt_revision_unspecified)
    {
      end_rev = start_rev;
    }
  else if (end_revision.kind == svn_opt_revision_head)
    {
      end_rev = SVN_INVALID_REVNUM;
    }
  else
    {
      end_rev = end_revision.value.number;
      if (! SVN_IS_VALID_REVNUM(end_rev))
        return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                                 _("Invalid revision number (%ld)"),
                                 end_rev);
    }

  *start_revnum = start_rev;
  *end_revnum = end_rev;
  return SVN_NO_ERROR;
}
