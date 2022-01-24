#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_9__ {int /*<<< orphan*/  kind; void* id; void const* name; } ;
typedef  TYPE_2__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {scalar_t__ kind; int /*<<< orphan*/  data_key; } ;
typedef  TYPE_3__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  svn_node_unknown ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(apr_hash_t **entries_p,
                svn_fs_t *fs,
                node_revision_t *noderev,
                trail_t *trail,
                apr_pool_t *pool)
{
  apr_hash_t *entries = NULL;
  apr_hash_index_t *hi;
  svn_string_t entries_raw;
  svn_skel_t *entries_skel;

  /* Error if this is not a directory. */
  if (noderev->kind != svn_node_dir)
    return FUNC8
      (SVN_ERR_FS_NOT_DIRECTORY, NULL,
       FUNC1("Attempted to get entries of a non-directory node"));

  /* If there's a DATA-KEY, there might be entries to fetch. */
  if (noderev->data_key)
    {
      /* Now we have a rep, follow through to get the entries. */
      FUNC0(FUNC10(&entries_raw, fs, noderev->data_key,
                                        trail, pool));
      entries_skel = FUNC11(entries_raw.data, entries_raw.len, pool);

      /* Were there entries?  Make a hash from them. */
      if (entries_skel)
        FUNC0(FUNC9(&entries, entries_skel,
                                                pool));
    }

  /* No hash?  No problem.  */
  *entries_p = NULL;
  if (! entries)
    return SVN_NO_ERROR;

  /* Else, convert the hash from a name->id mapping to a name->dirent one.  */
  *entries_p = FUNC3(pool);
  for (hi = FUNC2(pool, entries); hi; hi = FUNC4(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *val;
      svn_fs_dirent_t *dirent = FUNC7(pool, sizeof(*dirent));

      /* KEY will be the entry name in ancestor, VAL the id.  */
      FUNC6(hi, &key, &klen, &val);
      dirent->name = key;
      dirent->id = val;
      dirent->kind = svn_node_unknown;
      FUNC5(*entries_p, key, klen, dirent);
    }

  /* Return our findings. */
  return SVN_NO_ERROR;
}