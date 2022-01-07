
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int source_prop_encoding; int quiet; int skip_unchanged; int config; int source_callbacks; int from_url; } ;
typedef TYPE_2__ subcommand_baton_t ;
struct TYPE_15__ {int normalized_rev_props_count; int normalized_node_props_count; int has_atomic_revprops_capability; int to_session; int has_commit_revprops_capability; } ;
typedef TYPE_3__ replay_baton_t ;
typedef int apr_pool_t ;


 int APR_EINVAL ;
 int SVNSYNC_PROP_CURRENTLY_COPYING ;
 int SVNSYNC_PROP_LAST_MERGED_REV ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_ATOMIC_REVPROPS ;
 int SVN_RA_CAPABILITY_COMMIT_REVPROPS ;
 scalar_t__ SVN_STR_TO_REV (int ) ;
 int TRUE ;
 int _ (char*) ;
 int apr_psprintf (int *,char*,scalar_t__) ;
 int check_cancel (int *) ;
 int copy_revprops (int *,int *,scalar_t__,int ,int ,int ,int ,int*,int *) ;
 int log_properties_normalized (int,int ,int *) ;
 int make_replay_baton (TYPE_3__**,int *,int *,TYPE_2__*,int *) ;
 int open_source_session (int **,TYPE_1__**,int ,int *,int *,int ,TYPE_2__*,int *) ;
 int replay_rev_finished ;
 int replay_rev_started ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__,...) ;
 int svn_ra_change_rev_prop2 (int *,int ,int ,int *,TYPE_1__*,int *) ;
 int svn_ra_get_latest_revnum (int *,scalar_t__*,int *) ;
 int svn_ra_has_capability (int ,int *,int ,int *) ;
 int svn_ra_replay_range (int *,scalar_t__,scalar_t__,int ,int ,int ,int ,TYPE_3__*,int *) ;
 int svn_ra_rev_prop (int *,int ,int ,TYPE_1__**,int *) ;
 TYPE_1__* svn_string_create (int ,int *) ;

__attribute__((used)) static svn_error_t *
do_synchronize(svn_ra_session_t *to_session,
               subcommand_baton_t *baton, apr_pool_t *pool)
{
  svn_string_t *last_merged_rev;
  svn_revnum_t from_latest;
  svn_ra_session_t *from_session;
  svn_string_t *currently_copying;
  svn_revnum_t to_latest, copying, last_merged;
  svn_revnum_t start_revision, end_revision;
  replay_baton_t *rb;
  int normalized_rev_props_count = 0;

  SVN_ERR(open_source_session(&from_session, &last_merged_rev,
                              baton->from_url, to_session,
                              &(baton->source_callbacks), baton->config,
                              baton, pool));
  SVN_ERR(svn_ra_rev_prop(to_session, 0, SVNSYNC_PROP_CURRENTLY_COPYING,
                          &currently_copying, pool));

  SVN_ERR(svn_ra_get_latest_revnum(to_session, &to_latest, pool));

  last_merged = SVN_STR_TO_REV(last_merged_rev->data);

  if (currently_copying)
    {
      copying = SVN_STR_TO_REV(currently_copying->data);

      if ((copying < last_merged)
          || (copying > (last_merged + 1))
          || ((to_latest != last_merged) && (to_latest != copying)))
        {
          return svn_error_createf
            (APR_EINVAL, ((void*)0),
             _("Revision being currently copied (%ld), last merged revision "
               "(%ld), and destination HEAD (%ld) are inconsistent; have you "
               "committed to the destination without using svnsync?"),
             copying, last_merged, to_latest);
        }
      else if (copying == to_latest)
        {
          if (copying > last_merged)
            {
              SVN_ERR(copy_revprops(from_session, to_session, to_latest, TRUE,
                                    baton->skip_unchanged, baton->quiet,
                                    baton->source_prop_encoding,
                                    &normalized_rev_props_count, pool));
              last_merged = copying;
              last_merged_rev = svn_string_create
                (apr_psprintf(pool, "%ld", last_merged), pool);
            }







          SVN_ERR(svn_ra_change_rev_prop2(to_session, 0,
                                          SVNSYNC_PROP_LAST_MERGED_REV,
                                          ((void*)0), last_merged_rev, pool));
          SVN_ERR(svn_ra_change_rev_prop2(to_session, 0,
                                          SVNSYNC_PROP_CURRENTLY_COPYING,
                                          ((void*)0), ((void*)0), pool));
        }


    }
  else
    {
      if (to_latest != last_merged)
        return svn_error_createf(APR_EINVAL, ((void*)0),
                                 _("Destination HEAD (%ld) is not the last "
                                   "merged revision (%ld); have you "
                                   "committed to the destination without "
                                   "using svnsync?"),
                                 to_latest, last_merged);
    }


  SVN_ERR(svn_ra_get_latest_revnum(from_session, &from_latest, pool));

  if (from_latest <= last_merged)
    return SVN_NO_ERROR;



  SVN_ERR(make_replay_baton(&rb, from_session, to_session, baton, pool));



  SVN_ERR(svn_ra_has_capability(rb->to_session,
                                &rb->has_commit_revprops_capability,
                                SVN_RA_CAPABILITY_COMMIT_REVPROPS,
                                pool));

  SVN_ERR(svn_ra_has_capability(rb->to_session,
                                &rb->has_atomic_revprops_capability,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                pool));

  start_revision = last_merged + 1;
  end_revision = from_latest;

  SVN_ERR(check_cancel(((void*)0)));

  SVN_ERR(svn_ra_replay_range(from_session, start_revision, end_revision,
                              0, TRUE, replay_rev_started,
                              replay_rev_finished, rb, pool));

  SVN_ERR(log_properties_normalized(rb->normalized_rev_props_count
                                      + normalized_rev_props_count,
                                    rb->normalized_node_props_count,
                                    pool));


  return SVN_NO_ERROR;
}
