
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_17__ {char const* from_url; int source_prop_encoding; int quiet; int config; int source_callbacks; int allow_non_empty; } ;
typedef TYPE_3__ subcommand_baton_t ;
typedef int apr_pool_t ;


 int APR_EINVAL ;
 int FALSE ;
 int SVNSYNC_PROP_FROM_URL ;
 int SVNSYNC_PROP_FROM_UUID ;
 int SVNSYNC_PROP_LAST_MERGED_REV ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_PARTIAL_REPLAY_NOT_SUPPORTED ;
 scalar_t__ SVN_ERR_UNKNOWN_CAPABILITY ;
 TYPE_2__* SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_PARTIAL_REPLAY ;
 int * _ (char*) ;
 int copy_revprops (int *,int *,scalar_t__,int ,int ,int ,int ,int*,int *) ;
 int log_properties_normalized (int,int ,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_2__* svn_error_create (int ,TYPE_2__*,int *) ;
 TYPE_2__* svn_error_createf (int ,int *,int *,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_ra_change_rev_prop2 (int *,int ,int ,int *,int ,int *) ;
 int svn_ra_get_latest_revnum (int *,scalar_t__*,int *) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_get_uuid2 (int *,char const**,int *) ;
 TYPE_2__* svn_ra_has_capability (int *,int *,int ,int *) ;
 int svn_ra_open4 (int **,int *,char const*,int *,int *,TYPE_3__*,int ,int *) ;
 int svn_ra_rev_prop (int *,int ,int ,TYPE_1__**,int *) ;
 int svn_string_create (char const*,int *) ;
 int svn_string_createf (int *,char*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
do_initialize(svn_ra_session_t *to_session,
              subcommand_baton_t *baton,
              apr_pool_t *pool)
{
  svn_ra_session_t *from_session;
  svn_string_t *from_url;
  svn_revnum_t latest, from_latest;
  const char *uuid, *root_url;
  int normalized_rev_props_count;




  SVN_ERR(svn_ra_get_latest_revnum(to_session, &latest, pool));
  if ((latest != 0) && (! baton->allow_non_empty))
    return svn_error_create
      (APR_EINVAL, ((void*)0),
       _("Destination repository already contains revision history; consider "
         "using --allow-non-empty if the repository's revisions are known "
         "to mirror their respective revisions in the source repository"));

  SVN_ERR(svn_ra_rev_prop(to_session, 0, SVNSYNC_PROP_FROM_URL,
                          &from_url, pool));
  if (from_url && (! baton->allow_non_empty))
    return svn_error_createf
      (APR_EINVAL, ((void*)0),
       _("Destination repository is already synchronizing from '%s'"),
       from_url->data);



  SVN_ERR(svn_ra_open4(&from_session, ((void*)0), baton->from_url, ((void*)0),
                       &(baton->source_callbacks), baton,
                       baton->config, pool));
  SVN_ERR(svn_ra_get_repos_root2(from_session, &root_url, pool));



  if (strcmp(root_url, baton->from_url) != 0)
    {
      svn_boolean_t server_supports_partial_replay;
      svn_error_t *err = svn_ra_has_capability(from_session,
                                               &server_supports_partial_replay,
                                               SVN_RA_CAPABILITY_PARTIAL_REPLAY,
                                               pool);
      if (err && err->apr_err != SVN_ERR_UNKNOWN_CAPABILITY)
        return svn_error_trace(err);

      if (err || !server_supports_partial_replay)
        return svn_error_create(SVN_ERR_RA_PARTIAL_REPLAY_NOT_SUPPORTED, err,
                                ((void*)0));
    }



  if (latest != 0)
    {
      SVN_ERR(svn_ra_get_latest_revnum(from_session, &from_latest, pool));
      if (from_latest < latest)
        return svn_error_create
          (APR_EINVAL, ((void*)0),
           _("Destination repository has more revisions than source "
             "repository"));
    }

  SVN_ERR(svn_ra_change_rev_prop2(to_session, 0, SVNSYNC_PROP_FROM_URL, ((void*)0),
                                  svn_string_create(baton->from_url, pool),
                                  pool));

  SVN_ERR(svn_ra_get_uuid2(from_session, &uuid, pool));
  SVN_ERR(svn_ra_change_rev_prop2(to_session, 0, SVNSYNC_PROP_FROM_UUID, ((void*)0),
                                  svn_string_create(uuid, pool), pool));

  SVN_ERR(svn_ra_change_rev_prop2(to_session, 0, SVNSYNC_PROP_LAST_MERGED_REV,
                                  ((void*)0), svn_string_createf(pool, "%ld", latest),
                                  pool));
  SVN_ERR(copy_revprops(from_session, to_session, latest, FALSE, FALSE,
                        baton->quiet, baton->source_prop_encoding,
                        &normalized_rev_props_count, pool));

  SVN_ERR(log_properties_normalized(normalized_rev_props_count, 0, pool));
  return SVN_NO_ERROR;
}
