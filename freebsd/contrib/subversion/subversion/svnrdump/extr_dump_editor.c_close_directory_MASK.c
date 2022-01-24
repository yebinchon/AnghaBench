#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct dir_baton {int /*<<< orphan*/  deleted_entries; TYPE_1__* eb; int /*<<< orphan*/  repos_relpath; int /*<<< orphan*/  headers; scalar_t__ dump_props; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_3__ {int /*<<< orphan*/  stream; struct dir_baton* pending_db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,struct dir_baton*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_action_change ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *dir_baton,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  apr_hash_index_t *hi;
  svn_boolean_t this_pending;

  /* Remember if this directory is the one currently pending. */
  this_pending = (db->eb->pending_db == db);

  FUNC0(FUNC7(db->eb, pool));

  /* If this directory was pending, then dump_pending() should have
     taken care of all the props and such.  Of course, the only way
     that would be the case is if this directory was added/replaced.

     Otherwise, if stuff for this directory has already been written
     out (at some point in the past, prior to our handling other
     nodes), we might need to generate a second "change" record just
     to carry the information we've since learned about the
     directory. */
  if ((! this_pending) && (db->dump_props))
    {
      FUNC0(FUNC5(&db->headers,
                        db->eb, db->repos_relpath, db, NULL,
                        svn_node_action_change, FALSE,
                        NULL, SVN_INVALID_REVNUM, pool));
      db->eb->pending_db = db;
      FUNC0(FUNC7(db->eb, pool));
    }

  /* Dump the deleted directory entries */
  for (hi = FUNC2(pool, db->deleted_entries); hi;
       hi = FUNC3(hi))
    {
      const char *path = FUNC4(hi);

      FUNC0(FUNC6(db->eb->stream, path, pool));
      /* This deletion record is complete -- write an extra newline */
      FUNC0(FUNC8(db->eb->stream, "\n"));
    }

  /* ### should be unnecessary */
  FUNC1(db->deleted_entries);

  return SVN_NO_ERROR;
}