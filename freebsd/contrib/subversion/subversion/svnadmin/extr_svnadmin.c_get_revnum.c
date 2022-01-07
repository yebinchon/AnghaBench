
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_repos_t ;
struct TYPE_4__ {scalar_t__ number; int date; } ;
struct TYPE_5__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__) ;
 scalar_t__ svn_opt_revision_date ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_number ;
 scalar_t__ svn_opt_revision_unspecified ;
 int svn_repos_dated_revision (scalar_t__*,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_revnum(svn_revnum_t *revnum, const svn_opt_revision_t *revision,
           svn_revnum_t youngest, svn_repos_t *repos, apr_pool_t *pool)
{
  if (revision->kind == svn_opt_revision_number)
    *revnum = revision->value.number;
  else if (revision->kind == svn_opt_revision_head)
    *revnum = youngest;
  else if (revision->kind == svn_opt_revision_date)
    SVN_ERR(svn_repos_dated_revision(revnum, repos, revision->value.date,
                                     pool));
  else if (revision->kind == svn_opt_revision_unspecified)
    *revnum = SVN_INVALID_REVNUM;
  else
    return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                            _("Invalid revision specifier"));

  if (*revnum > youngest)
    return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
       _("Revisions must not be greater than the youngest revision (%ld)"),
       youngest);

  return SVN_NO_ERROR;
}
