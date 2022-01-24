#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_13__ {TYPE_7__* entries; } ;
typedef  TYPE_1__ svn_fs_fs__dir_data_t ;
struct TYPE_14__ {int /*<<< orphan*/  kind; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cache__t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ pair_cache_key_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_16__ {char const* name; scalar_t__ out_of_date; int /*<<< orphan*/  txn_filesize; } ;
typedef  TYPE_4__ extract_dir_entry_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_17__ {int nelts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,void const**,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_fs__extract_dir_entry ; 
 TYPE_2__* FUNC9 (TYPE_7__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_fs_dirent_t **dirent,
                                  svn_fs_t *fs,
                                  node_revision_t *noderev,
                                  const char *name,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  extract_dir_entry_baton_t baton;
  svn_boolean_t found = FALSE;

  /* find the cache we may use */
  pair_cache_key_t pair_key = { 0 };
  const void *key;
  svn_cache__t *cache = FUNC5(fs, &key, &pair_key, noderev,
                                         scratch_pool);
  if (cache)
    {
      svn_filesize_t filesize;
      FUNC0(FUNC4(&filesize, fs, noderev, scratch_pool));

      /* Cache lookup. */
      baton.txn_filesize = filesize;
      baton.name = name;
      FUNC0(FUNC6((void **)dirent,
                                     &found,
                                     cache,
                                     key,
                                     svn_fs_fs__extract_dir_entry,
                                     &baton,
                                     result_pool));
    }

  /* fetch data from disk if we did not find it in the cache */
  if (! found || baton.out_of_date)
    {
      svn_fs_dirent_t *entry;
      svn_fs_dirent_t *entry_copy = NULL;
      svn_fs_fs__dir_data_t dir;

      /* Read in the directory contents. */
      FUNC0(FUNC3(&dir, fs, noderev, scratch_pool,
                               scratch_pool));

      /* Update the cache, if we are to use one.
       *
       * Don't even attempt to serialize very large directories; it would
       * cause an unnecessary memory allocation peak.  150 bytes / entry is
       * about right. */
      if (cache && FUNC7(cache, 150 * dir.entries->nelts))
        FUNC0(FUNC8(cache, key, &dir, scratch_pool));

      /* find desired entry and return a copy in POOL, if found */
      entry = FUNC9(dir.entries, name, NULL);
      if (entry)
        {
          entry_copy = FUNC1(result_pool, sizeof(*entry_copy));
          entry_copy->name = FUNC2(result_pool, entry->name);
          entry_copy->id = FUNC10(entry->id, result_pool);
          entry_copy->kind = entry->kind;
        }

      *dirent = entry_copy;
    }

  return SVN_NO_ERROR;
}