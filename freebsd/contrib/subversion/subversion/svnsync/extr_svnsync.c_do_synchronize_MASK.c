#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  source_prop_encoding; int /*<<< orphan*/  quiet; int /*<<< orphan*/  skip_unchanged; int /*<<< orphan*/  config; int /*<<< orphan*/  source_callbacks; int /*<<< orphan*/  from_url; } ;
typedef  TYPE_2__ subcommand_baton_t ;
struct TYPE_15__ {int normalized_rev_props_count; int /*<<< orphan*/  normalized_node_props_count; int /*<<< orphan*/  has_atomic_revprops_capability; int /*<<< orphan*/  to_session; int /*<<< orphan*/  has_commit_revprops_capability; } ;
typedef  TYPE_3__ replay_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EINVAL ; 
 int /*<<< orphan*/  SVNSYNC_PROP_CURRENTLY_COPYING ; 
 int /*<<< orphan*/  SVNSYNC_PROP_LAST_MERGED_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_ATOMIC_REVPROPS ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_COMMIT_REVPROPS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  replay_rev_finished ; 
 int /*<<< orphan*/  replay_rev_started ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_ra_session_t *to_session,
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

  FUNC0(FUNC8(&from_session, &last_merged_rev,
                              baton->from_url, to_session,
                              &(baton->source_callbacks), baton->config,
                              baton, pool));

  /* Check to see if we have revprops that still need to be copied for
     a prior revision we didn't finish copying.  But first, check for
     state sanity.  Remember, mirroring is not an atomic action,
     because revision properties are copied separately from the
     revision's contents.

     So, any time that currently-copying is not set, then
     last-merged-rev should be the HEAD revision of the destination
     repository.  That is, if we didn't fall over in the middle of a
     previous synchronization, then our destination repository should
     have exactly as many revisions in it as we've synchronized.

     Alternately, if currently-copying *is* set, it must
     be either last-merged-rev or last-merged-rev + 1, and the HEAD
     revision must be equal to either last-merged-rev or
     currently-copying. If this is not the case, somebody has meddled
     with the destination without using svnsync.
  */

  FUNC0(FUNC14(to_session, 0, SVNSYNC_PROP_CURRENTLY_COPYING,
                          &currently_copying, pool));

  FUNC0(FUNC11(to_session, &to_latest, pool));

  last_merged = FUNC1(last_merged_rev->data);

  if (currently_copying)
    {
      copying = FUNC1(currently_copying->data);

      if ((copying < last_merged)
          || (copying > (last_merged + 1))
          || ((to_latest != last_merged) && (to_latest != copying)))
        {
          return FUNC9
            (APR_EINVAL, NULL,
             FUNC2("Revision being currently copied (%ld), last merged revision "
               "(%ld), and destination HEAD (%ld) are inconsistent; have you "
               "committed to the destination without using svnsync?"),
             copying, last_merged, to_latest);
        }
      else if (copying == to_latest)
        {
          if (copying > last_merged)
            {
              FUNC0(FUNC5(from_session, to_session, to_latest, TRUE,
                                    baton->skip_unchanged, baton->quiet,
                                    baton->source_prop_encoding,
                                    &normalized_rev_props_count, pool));
              last_merged = copying;
              last_merged_rev = FUNC15
                (FUNC3(pool, "%ld", last_merged), pool);
            }

          /* Now update last merged rev and drop currently changing.
             Note that the order here is significant, if we do them
             in the wrong order there are race conditions where we
             end up not being able to tell if there have been bogus
             (i.e. non-svnsync) commits to the dest repository. */

          FUNC0(FUNC10(to_session, 0,
                                          SVNSYNC_PROP_LAST_MERGED_REV,
                                          NULL, last_merged_rev, pool));
          FUNC0(FUNC10(to_session, 0,
                                          SVNSYNC_PROP_CURRENTLY_COPYING,
                                          NULL, NULL, pool));
        }
      /* If copying > to_latest, then we just fall through to
         attempting to copy the revision again. */
    }
  else
    {
      if (to_latest != last_merged)
        return FUNC9(APR_EINVAL, NULL,
                                 FUNC2("Destination HEAD (%ld) is not the last "
                                   "merged revision (%ld); have you "
                                   "committed to the destination without "
                                   "using svnsync?"),
                                 to_latest, last_merged);
    }

  /* Now check to see if there are any revisions to copy. */
  FUNC0(FUNC11(from_session, &from_latest, pool));

  if (from_latest <= last_merged)
    return SVN_NO_ERROR;

  /* Ok, so there are new revisions, iterate over them copying them
     into the destination repository. */
  FUNC0(FUNC7(&rb, from_session, to_session, baton, pool));

  /* For compatibility with older svnserve versions, check first if we
     support adding revprops to the commit. */
  FUNC0(FUNC12(rb->to_session,
                                &rb->has_commit_revprops_capability,
                                SVN_RA_CAPABILITY_COMMIT_REVPROPS,
                                pool));

  FUNC0(FUNC12(rb->to_session,
                                &rb->has_atomic_revprops_capability,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                pool));

  start_revision = last_merged + 1;
  end_revision = from_latest;

  FUNC0(FUNC4(NULL));

  FUNC0(FUNC13(from_session, start_revision, end_revision,
                              0, TRUE, replay_rev_started,
                              replay_rev_finished, rb, pool));

  FUNC0(FUNC6(rb->normalized_rev_props_count
                                      + normalized_rev_props_count,
                                    rb->normalized_node_props_count,
                                    pool));


  return SVN_NO_ERROR;
}