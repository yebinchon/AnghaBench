
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int (* close_edit ) (void*,int *) ;} ;
typedef TYPE_2__ svn_delta_editor_t ;
struct TYPE_7__ {int normalized_rev_props_count; TYPE_1__* sb; scalar_t__ has_atomic_revprops_capability; int to_session; scalar_t__ has_commit_revprops_capability; } ;
typedef TYPE_3__ replay_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int quiet; int source_prop_encoding; int committed_rev; } ;


 int APR_EINVAL ;
 int SVNSYNC_PROP_CURRENTLY_COPYING ;
 int SVNSYNC_PROP_LAST_MERGED_REV ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int filter_exclude_log ;
 int filter_include_date_author_sync ;
 int * filter_props (int*,int *,int ,int *) ;
 int log_properties_copied (int,int ,int *) ;
 int remove_props_not_in_source (int ,int ,int *,int *,int *) ;
 int stub1 (void*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_change_rev_prop2 (int ,int ,int ,int const**,int const*,int *) ;
 int svn_ra_rev_proplist (int ,int ,int **,int *) ;
 int * svn_string_createf (int *,char*,int ) ;
 int svnsync_normalize_revprops (int *,int*,int ,int *) ;
 int write_revprops (int*,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
replay_rev_finished(svn_revnum_t revision,
                    void *replay_baton,
                    const svn_delta_editor_t *editor,
                    void *edit_baton,
                    apr_hash_t *rev_props,
                    apr_pool_t *pool)
{
  apr_pool_t *subpool = svn_pool_create(pool);
  replay_baton_t *rb = replay_baton;
  apr_hash_t *filtered, *existing_props;
  int filtered_count;
  int normalized_count;
  const svn_string_t *rev_str;

  SVN_ERR(editor->close_edit(edit_baton, pool));


  if (rb->sb->committed_rev != revision)
    return svn_error_createf
             (APR_EINVAL, ((void*)0),
              _("Commit created r%ld but should have created r%ld"),
              rb->sb->committed_rev, revision);

  SVN_ERR(svn_ra_rev_proplist(rb->to_session, revision, &existing_props,
                              subpool));






  filtered = filter_props(&filtered_count, rev_props,
                          (rb->has_commit_revprops_capability
                            ? filter_include_date_author_sync
                            : filter_exclude_log),
                          subpool);



  SVN_ERR(svnsync_normalize_revprops(filtered, &normalized_count,
                                     rb->sb->source_prop_encoding, pool));
  rb->normalized_rev_props_count += normalized_count;

  SVN_ERR(write_revprops(&filtered_count, rb->to_session, revision, filtered,
                         ((void*)0), subpool));


  SVN_ERR(remove_props_not_in_source(rb->to_session, revision,
                                     rev_props, existing_props, subpool));

  svn_pool_clear(subpool);

  rev_str = svn_string_createf(subpool, "%ld", revision);


  SVN_ERR(svn_ra_change_rev_prop2(
           rb->to_session,
           0,
           SVNSYNC_PROP_LAST_MERGED_REV,
           ((void*)0),
           rev_str,
           subpool));



  SVN_ERR(svn_ra_change_rev_prop2(rb->to_session, 0,
                                  SVNSYNC_PROP_CURRENTLY_COPYING,
                                  rb->has_atomic_revprops_capability
                                    ? &rev_str : ((void*)0),
                                  ((void*)0), subpool));


  if (! rb->sb->quiet)
    SVN_ERR(log_properties_copied(filtered_count > 0, revision, subpool));

  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
