#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton {scalar_t__ rev; int /*<<< orphan*/  pool; int /*<<< orphan*/  revprop_table; struct parse_baton* pb; scalar_t__ rev_offset; int /*<<< orphan*/ * db; } ;
struct parse_baton {scalar_t__ oldest_dumpstream_rev; int /*<<< orphan*/ * commit_edit_baton; int /*<<< orphan*/ * commit_editor; int /*<<< orphan*/  session; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int32_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_REVISION_NUMBER ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct revision_baton* FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(void **revision_baton,
                    apr_hash_t *headers,
                    void *parse_baton,
                    apr_pool_t *pool)
{
  struct revision_baton *rb;
  struct parse_baton *pb;
  const char *rev_str;
  svn_revnum_t head_rev;

  rb = FUNC4(pool, sizeof(*rb));
  pb = parse_baton;
  rb->pool = FUNC6(pool);
  rb->pb = pb;
  rb->db = NULL;

  rev_str = FUNC5(headers, SVN_REPOS_DUMPFILE_REVISION_NUMBER);
  if (rev_str)
    rb->rev = FUNC2(rev_str);

  FUNC0(FUNC7(pb->session, &head_rev, pool));

  /* FIXME: This is a lame fallback loading multiple segments of dump in
     several separate operations. It is highly susceptible to race conditions.
     Calculate the revision 'offset' for finding copyfrom sources.
     It might be positive or negative. */
  rb->rev_offset = (apr_int32_t) ((rb->rev) - (head_rev + 1));

  /* Stash the oldest (non-zero) dumpstream revision seen. */
  if ((rb->rev > 0) && (!FUNC1(pb->oldest_dumpstream_rev)))
    pb->oldest_dumpstream_rev = rb->rev;

  /* Set the commit_editor/ commit_edit_baton to NULL and wait for
     them to be created in new_node_record */
  rb->pb->commit_editor = NULL;
  rb->pb->commit_edit_baton = NULL;
  rb->revprop_table = FUNC3(rb->pool);

  *revision_baton = rb;
  return SVN_NO_ERROR;
}