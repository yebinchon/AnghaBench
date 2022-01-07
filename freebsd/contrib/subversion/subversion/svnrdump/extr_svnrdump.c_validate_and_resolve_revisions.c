
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ number; } ;
struct TYPE_10__ {scalar_t__ kind; TYPE_3__ value; } ;
struct TYPE_7__ {scalar_t__ number; } ;
struct TYPE_8__ {scalar_t__ kind; TYPE_1__ value; } ;
struct TYPE_11__ {TYPE_4__ start_revision; TYPE_2__ end_revision; } ;
typedef TYPE_5__ opt_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__) ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_number ;
 scalar_t__ svn_opt_revision_unspecified ;

__attribute__((used)) static svn_error_t *
validate_and_resolve_revisions(opt_baton_t *opt_baton,
                               svn_revnum_t latest_revision,
                               apr_pool_t *pool)
{
  svn_revnum_t provided_start_rev = SVN_INVALID_REVNUM;




  if (opt_baton->start_revision.kind == svn_opt_revision_number)
    {
      provided_start_rev = opt_baton->start_revision.value.number;
    }
  else if (opt_baton->start_revision.kind == svn_opt_revision_head)
    {
      opt_baton->start_revision.kind = svn_opt_revision_number;
      opt_baton->start_revision.value.number = latest_revision;
    }
  else if (opt_baton->start_revision.kind == svn_opt_revision_unspecified)
    {
      opt_baton->start_revision.kind = svn_opt_revision_number;
      opt_baton->start_revision.value.number = 0;
    }

  if (opt_baton->start_revision.kind != svn_opt_revision_number)
    {
      return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                              _("Unsupported revision specifier used; use "
                                "only integer values or 'HEAD'"));
    }

  if ((opt_baton->start_revision.value.number < 0) ||
      (opt_baton->start_revision.value.number > latest_revision))
    {
      return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                               _("Revision '%ld' does not exist"),
                               opt_baton->start_revision.value.number);
    }






  if (opt_baton->end_revision.kind == svn_opt_revision_unspecified)
    {
      opt_baton->end_revision.kind = svn_opt_revision_number;
      if (SVN_IS_VALID_REVNUM(provided_start_rev))
        opt_baton->end_revision.value.number = provided_start_rev;
      else
        opt_baton->end_revision.value.number = latest_revision;
    }
  else if (opt_baton->end_revision.kind == svn_opt_revision_head)
    {
      opt_baton->end_revision.kind = svn_opt_revision_number;
      opt_baton->end_revision.value.number = latest_revision;
    }

  if (opt_baton->end_revision.kind != svn_opt_revision_number)
    {
      return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                              _("Unsupported revision specifier used; use "
                                "only integer values or 'HEAD'"));
    }

  if ((opt_baton->end_revision.value.number < 0) ||
      (opt_baton->end_revision.value.number > latest_revision))
    {
      return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                               _("Revision '%ld' does not exist"),
                               opt_baton->end_revision.value.number);
    }



  if (opt_baton->end_revision.value.number <
      opt_baton->start_revision.value.number)
    {
      return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                              _("LOWER revision cannot be greater than "
                                "UPPER revision; consider reversing your "
                                "revision range"));
    }
  return SVN_NO_ERROR;
}
