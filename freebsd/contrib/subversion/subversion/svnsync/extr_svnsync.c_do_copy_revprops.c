
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ start_rev; scalar_t__ end_rev; int source_prop_encoding; int quiet; int skip_unchanged; int config; int source_callbacks; int from_url; } ;
typedef TYPE_2__ subcommand_baton_t ;
typedef int apr_pool_t ;


 int APR_EINVAL ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_STR_TO_REV (int ) ;
 int TRUE ;
 int _ (char*) ;
 int check_cancel (int *) ;
 int copy_revprops (int *,int *,scalar_t__,int ,int ,int ,int ,int*,int *) ;
 int log_properties_normalized (int,int ,int *) ;
 int open_source_session (int **,TYPE_1__**,int ,int *,int *,int ,TYPE_2__*,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__) ;

__attribute__((used)) static svn_error_t *
do_copy_revprops(svn_ra_session_t *to_session,
                 subcommand_baton_t *baton, apr_pool_t *pool)
{
  svn_ra_session_t *from_session;
  svn_string_t *last_merged_rev;
  svn_revnum_t i;
  svn_revnum_t step = 1;
  int normalized_rev_props_count = 0;

  SVN_ERR(open_source_session(&from_session, &last_merged_rev,
                              baton->from_url, to_session,
                              &(baton->source_callbacks), baton->config,
                              baton, pool));


  if (! SVN_IS_VALID_REVNUM(baton->start_rev))
    baton->start_rev = SVN_STR_TO_REV(last_merged_rev->data);
  if (! SVN_IS_VALID_REVNUM(baton->end_rev))
    baton->end_rev = SVN_STR_TO_REV(last_merged_rev->data);


  if (baton->start_rev > SVN_STR_TO_REV(last_merged_rev->data))
    return svn_error_createf
      (APR_EINVAL, ((void*)0),
       _("Cannot copy revprops for a revision (%ld) that has not "
         "been synchronized yet"), baton->start_rev);
  if (baton->end_rev > SVN_STR_TO_REV(last_merged_rev->data))
    return svn_error_createf
      (APR_EINVAL, ((void*)0),
       _("Cannot copy revprops for a revision (%ld) that has not "
         "been synchronized yet"), baton->end_rev);


  step = (baton->start_rev > baton->end_rev) ? -1 : 1;
  for (i = baton->start_rev; i != baton->end_rev + step; i = i + step)
    {
      int normalized_count;
      SVN_ERR(check_cancel(((void*)0)));
      SVN_ERR(copy_revprops(from_session, to_session, i, TRUE,
                            baton->skip_unchanged, baton->quiet,
                            baton->source_prop_encoding, &normalized_count,
                            pool));
      normalized_rev_props_count += normalized_count;
    }


  SVN_ERR(log_properties_normalized(normalized_rev_props_count, 0, pool));

  return SVN_NO_ERROR;
}
