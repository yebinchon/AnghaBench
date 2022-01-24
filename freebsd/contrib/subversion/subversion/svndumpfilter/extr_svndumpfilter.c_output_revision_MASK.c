#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct revmap_t {void* was_dropped; int /*<<< orphan*/  rev; } ;
struct revision_baton_t {scalar_t__ rev_orig; TYPE_1__* pb; int /*<<< orphan*/  rev_actual; int /*<<< orphan*/ * props; int /*<<< orphan*/  original_headers; scalar_t__ had_dropped_nodes; scalar_t__ has_nodes; void* writing_begun; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_2__ {scalar_t__ oldest_original_rev; int /*<<< orphan*/  quiet; int /*<<< orphan*/ * renumber_history; int /*<<< orphan*/  last_live_revision; scalar_t__ do_renumber_revs; int /*<<< orphan*/  rev_drop_count; int /*<<< orphan*/  out_stream; int /*<<< orphan*/  drop_all_empty_revs; scalar_t__ drop_empty_revs; int /*<<< orphan*/  preserve_revprops; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int,struct revmap_t*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(struct revision_baton_t *rb)
{
  svn_boolean_t write_out_rev = FALSE;
  apr_pool_t *hash_pool = FUNC4(rb->props);
  apr_pool_t *subpool = FUNC10(hash_pool);

  rb->writing_begun = TRUE;

  /* If this revision has no nodes left because the ones it had were
     dropped, and we are not dropping empty revisions, and we were not
     told to preserve revision props, then we want to fixup the
     revision props to only contain:
       - the date
       - a log message that reports that this revision is just stuffing. */
  if ((! rb->pb->preserve_revprops)
      && (! rb->has_nodes)
      && rb->had_dropped_nodes
      && (! rb->pb->drop_empty_revs)
      && (! rb->pb->drop_all_empty_revs))
    {
      apr_hash_t *old_props = rb->props;
      rb->props = FUNC3(hash_pool);
      FUNC9(rb->props, SVN_PROP_REVISION_DATE,
                    FUNC8(old_props, SVN_PROP_REVISION_DATE));
      FUNC9(rb->props, SVN_PROP_REVISION_LOG,
                    FUNC13(FUNC2("This is an empty revision for "
                                        "padding."), hash_pool));
    }

  /* write out the revision */
  /* Revision is written out in the following cases:
     1. If the revision has nodes or
     it is revision 0 (Special case: To preserve the props on r0).
     2. --drop-empty-revs has been supplied,
     but revision has not all nodes dropped.
     3. If no --drop-empty-revs or --drop-all-empty-revs have been supplied,
     write out the revision which has no nodes to begin with.
  */
  if (rb->has_nodes || (rb->rev_orig == 0))
    write_out_rev = TRUE;
  else if (rb->pb->drop_empty_revs)
    write_out_rev = ! rb->had_dropped_nodes;
  else if (! rb->pb->drop_all_empty_revs)
    write_out_rev = TRUE;

  if (write_out_rev)
    {
      /* This revision is a keeper. */
      FUNC0(FUNC12(rb->pb->out_stream,
                                              rb->rev_actual,
                                              rb->original_headers,
                                              rb->props,
                                              FALSE /*props_section_always*/,
                                              subpool));

      /* Stash the oldest original rev not dropped. */
      if (rb->rev_orig > 0
          && !FUNC1(rb->pb->oldest_original_rev))
        rb->pb->oldest_original_rev = rb->rev_orig;

      if (rb->pb->do_renumber_revs)
        {
          svn_revnum_t *rr_key;
          struct revmap_t *rr_val;
          apr_pool_t *rr_pool = FUNC4(rb->pb->renumber_history);
          rr_key = FUNC6(rr_pool, sizeof(*rr_key));
          rr_val = FUNC6(rr_pool, sizeof(*rr_val));
          *rr_key = rb->rev_orig;
          rr_val->rev = rb->rev_actual;
          rr_val->was_dropped = FALSE;
          FUNC5(rb->pb->renumber_history, rr_key,
                       sizeof(*rr_key), rr_val);
          rb->pb->last_live_revision = rb->rev_actual;
        }

      if (! rb->pb->quiet)
        FUNC0(FUNC7(stderr, subpool,
                                    FUNC2("Revision %ld committed as %ld.\n"),
                                    rb->rev_orig, rb->rev_actual));
    }
  else
    {
      /* We're dropping this revision. */
      rb->pb->rev_drop_count++;
      if (rb->pb->do_renumber_revs)
        {
          svn_revnum_t *rr_key;
          struct revmap_t *rr_val;
          apr_pool_t *rr_pool = FUNC4(rb->pb->renumber_history);
          rr_key = FUNC6(rr_pool, sizeof(*rr_key));
          rr_val = FUNC6(rr_pool, sizeof(*rr_val));
          *rr_key = rb->rev_orig;
          rr_val->rev = rb->pb->last_live_revision;
          rr_val->was_dropped = TRUE;
          FUNC5(rb->pb->renumber_history, rr_key,
                       sizeof(*rr_key), rr_val);
        }

      if (! rb->pb->quiet)
        FUNC0(FUNC7(stderr, subpool,
                                    FUNC2("Revision %ld skipped.\n"),
                                    rb->rev_orig));
    }
  FUNC11(subpool);
  return SVN_NO_ERROR;
}