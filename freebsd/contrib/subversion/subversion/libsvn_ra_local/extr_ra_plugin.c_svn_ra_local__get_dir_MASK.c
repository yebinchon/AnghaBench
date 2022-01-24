#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_10__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_11__ {int /*<<< orphan*/  uuid; int /*<<< orphan*/  fs; TYPE_1__* fs_path; } ;
typedef  TYPE_3__ svn_ra_local__session_baton_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_12__ {scalar_t__ kind; } ;
typedef  TYPE_4__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {scalar_t__ kind; scalar_t__ last_author; int /*<<< orphan*/  time; int /*<<< orphan*/  created_rev; int /*<<< orphan*/  has_props; int /*<<< orphan*/  size; } ;
typedef  TYPE_5__ svn_dirent_t ;
typedef  int apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int SVN_DIRENT_CREATED_REV ; 
 int SVN_DIRENT_HAS_PROPS ; 
 int SVN_DIRENT_KIND ; 
 int SVN_DIRENT_LAST_AUTHOR ; 
 int SVN_DIRENT_SIZE ; 
 int SVN_DIRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,TYPE_5__*) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC22(svn_ra_session_t *session,
                      apr_hash_t **dirents,
                      svn_revnum_t *fetched_rev,
                      apr_hash_t **props,
                      const char *path,
                      svn_revnum_t revision,
                      apr_uint32_t dirent_fields,
                      apr_pool_t *pool)
{
  svn_fs_root_t *root;
  svn_revnum_t youngest_rev;
  apr_hash_t *entries;
  apr_hash_index_t *hi;
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *abs_path = FUNC15(sess->fs_path->data, path, pool);

  /* Open the revision's root. */
  if (! FUNC1(revision))
    {
      FUNC0(FUNC14(&youngest_rev, sess->fs, pool));
      FUNC0(FUNC13(&root, sess->fs, youngest_rev, pool));
      if (fetched_rev != NULL)
        *fetched_rev = youngest_rev;
    }
  else
    FUNC0(FUNC13(&root, sess->fs, revision, pool));

  if (dirents)
    {
      apr_pool_t *iterpool = FUNC18(pool);
      /* Get the dir's entries. */
      FUNC0(FUNC10(&entries, root, abs_path, pool));

      /* Loop over the fs dirents, and build a hash of general
         svn_dirent_t's. */
      *dirents = FUNC3(pool);
      for (hi = FUNC2(pool, entries); hi; hi = FUNC4(hi))
        {
          const void *key;
          void *val;
          const char *datestring, *entryname, *fullpath;
          svn_fs_dirent_t *fs_entry;
          svn_dirent_t *entry = FUNC8(pool);

          FUNC17(iterpool);

          FUNC5(hi, &key, NULL, &val);
          entryname = (const char *) key;
          fs_entry = (svn_fs_dirent_t *) val;

          fullpath = FUNC9(abs_path, entryname, iterpool);

          if (dirent_fields & SVN_DIRENT_KIND)
            {
              /* node kind */
              entry->kind = fs_entry->kind;
            }

          if (dirent_fields & SVN_DIRENT_SIZE)
            {
              /* size  */
              if (fs_entry->kind == svn_node_dir)
                entry->size = SVN_INVALID_FILESIZE;
              else
                FUNC0(FUNC11(&(entry->size), root,
                                           fullpath, iterpool));
            }

          if (dirent_fields & SVN_DIRENT_HAS_PROPS)
            {
              /* has_props? */
              FUNC0(FUNC12(&entry->has_props,
                                            root, fullpath,
                                            iterpool));
            }

          if ((dirent_fields & SVN_DIRENT_TIME)
              || (dirent_fields & SVN_DIRENT_LAST_AUTHOR)
              || (dirent_fields & SVN_DIRENT_CREATED_REV))
            {
              /* created_rev & friends */
              FUNC0(FUNC20(&(entry->created_rev),
                                                   &datestring,
                                                   &(entry->last_author),
                                                   root, fullpath, iterpool));
              if (datestring)
                FUNC0(FUNC21(&(entry->time), datestring,
                                              pool));
              if (entry->last_author)
                entry->last_author = FUNC6(pool, entry->last_author);
            }

          /* Store. */
          FUNC16(*dirents, entryname, entry);
        }
      FUNC19(iterpool);
    }

  /* Handle props if requested. */
  if (props)
    FUNC0(FUNC7(props, root, abs_path, sess->uuid, pool, pool));

  return SVN_NO_ERROR;
}