#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_17__ {char const* from_url; int /*<<< orphan*/  source_prop_encoding; int /*<<< orphan*/  quiet; int /*<<< orphan*/  config; int /*<<< orphan*/  source_callbacks; int /*<<< orphan*/  allow_non_empty; } ;
typedef  TYPE_3__ subcommand_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVNSYNC_PROP_FROM_URL ; 
 int /*<<< orphan*/  SVNSYNC_PROP_FROM_UUID ; 
 int /*<<< orphan*/  SVNSYNC_PROP_LAST_MERGED_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_PARTIAL_REPLAY_NOT_SUPPORTED ; 
 scalar_t__ SVN_ERR_UNKNOWN_CAPABILITY ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_PARTIAL_REPLAY ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC17(svn_ra_session_t *to_session,
              subcommand_baton_t *baton,
              apr_pool_t *pool)
{
  svn_ra_session_t *from_session;
  svn_string_t *from_url;
  svn_revnum_t latest, from_latest;
  const char *uuid, *root_url;
  int normalized_rev_props_count;

  /* First, sanity check to see that we're copying into a brand new
     repos.  If we aren't, and we aren't being asked to forcibly
     complete this initialization, that's a bad news.  */
  FUNC0(FUNC9(to_session, &latest, pool));
  if ((latest != 0) && (! baton->allow_non_empty))
    return FUNC5
      (APR_EINVAL, NULL,
       FUNC1("Destination repository already contains revision history; consider "
         "using --allow-non-empty if the repository's revisions are known "
         "to mirror their respective revisions in the source repository"));

  FUNC0(FUNC14(to_session, 0, SVNSYNC_PROP_FROM_URL,
                          &from_url, pool));
  if (from_url && (! baton->allow_non_empty))
    return FUNC6
      (APR_EINVAL, NULL,
       FUNC1("Destination repository is already synchronizing from '%s'"),
       from_url->data);

  /* Now fill in our bookkeeping info in the dest repository. */

  FUNC0(FUNC13(&from_session, NULL, baton->from_url, NULL,
                       &(baton->source_callbacks), baton,
                       baton->config, pool));
  FUNC0(FUNC10(from_session, &root_url, pool));

  /* If we're doing a partial replay, we have to check first if the server
     supports this. */
  if (FUNC4(root_url, baton->from_url) != 0)
    {
      svn_boolean_t server_supports_partial_replay;
      svn_error_t *err = FUNC12(from_session,
                                               &server_supports_partial_replay,
                                               SVN_RA_CAPABILITY_PARTIAL_REPLAY,
                                               pool);
      if (err && err->apr_err != SVN_ERR_UNKNOWN_CAPABILITY)
        return FUNC7(err);

      if (err || !server_supports_partial_replay)
        return FUNC5(SVN_ERR_RA_PARTIAL_REPLAY_NOT_SUPPORTED, err,
                                NULL);
    }

  /* If we're initializing a non-empty destination, we'll make sure
     that it at least doesn't have more revisions than the source. */
  if (latest != 0)
    {
      FUNC0(FUNC9(from_session, &from_latest, pool));
      if (from_latest < latest)
        return FUNC5
          (APR_EINVAL, NULL,
           FUNC1("Destination repository has more revisions than source "
             "repository"));
    }

  FUNC0(FUNC8(to_session, 0, SVNSYNC_PROP_FROM_URL, NULL,
                                  FUNC15(baton->from_url, pool),
                                  pool));

  FUNC0(FUNC11(from_session, &uuid, pool));
  FUNC0(FUNC8(to_session, 0, SVNSYNC_PROP_FROM_UUID, NULL,
                                  FUNC15(uuid, pool), pool));

  FUNC0(FUNC8(to_session, 0, SVNSYNC_PROP_LAST_MERGED_REV,
                                  NULL, FUNC16(pool, "%ld", latest),
                                  pool));

  /* Copy all non-svnsync revprops from the LATEST rev in the source
     repository into the destination, notifying about normalized
     props, if any.  When LATEST is 0, this serves the practical
     purpose of initializing data that would otherwise be overlooked
     by the sync process (which is going to begin with r1).  When
     LATEST is not 0, this really serves merely aesthetic and
     informational purposes, keeping the output of this command
     consistent while allowing folks to see what the latest revision is.  */
  FUNC0(FUNC2(from_session, to_session, latest, FALSE, FALSE,
                        baton->quiet, baton->source_prop_encoding,
                        &normalized_rev_props_count, pool));

  FUNC0(FUNC3(normalized_rev_props_count, 0, pool));

  /* TODO: It would be nice if we could set the dest repos UUID to be
     equal to the UUID of the source repos, at least optionally.  That
     way people could check out/log/diff using a local fast mirror,
     but switch --relocate to the actual final repository in order to
     make changes...  But at this time, the RA layer doesn't have a
     way to set a UUID. */

  return SVN_NO_ERROR;
}