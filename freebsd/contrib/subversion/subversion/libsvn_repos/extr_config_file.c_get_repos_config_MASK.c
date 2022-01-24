#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  pool; int /*<<< orphan*/ * repos; } ;
typedef  TYPE_1__ config_access_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 char* FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char const**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC17(svn_stream_t **stream,
                 svn_checksum_t **checksum,
                 config_access_t *access,
                 const char *url,
                 svn_boolean_t must_exist,
                 apr_pool_t *scratch_pool)
{
  svn_fs_t *fs;
  svn_fs_root_t *root;
  svn_revnum_t youngest_rev;
  svn_node_kind_t node_kind;
  const char *dirent;
  const char *fs_path;
  const char *repos_root_dirent;

  FUNC0(FUNC16(&dirent, url, access->pool));

  /* Maybe we can use the repos hint instance instead of creating a
   * new one. */
  if (access->repos)
    {
      repos_root_dirent = FUNC15(access->repos, scratch_pool);
      if (!FUNC5(repos_root_dirent))
        FUNC0(FUNC4(&repos_root_dirent,
                                        repos_root_dirent,
                                        scratch_pool));

      if (!FUNC6(repos_root_dirent, dirent))
        access->repos = NULL;
    }

  /* Open repos if no suitable repos is available. */
  if (!access->repos)
    {
      /* Search for a repository in the full path. */
      repos_root_dirent = FUNC12(dirent, scratch_pool);

      /* Attempt to open a repository at repos_root_dirent. */
      FUNC0(FUNC14(&access->repos, repos_root_dirent, NULL,
                              access->pool, scratch_pool));
    }

  fs_path = &dirent[FUNC3(repos_root_dirent)];

  /* Get the filesystem. */
  fs = FUNC13(access->repos);

  /* Find HEAD and the revision root */
  FUNC0(FUNC11(&youngest_rev, fs, scratch_pool));
  FUNC0(FUNC10(&root, fs, youngest_rev, access->pool));

  /* Special case: non-existent paths may be handled as "empty" contents. */
  FUNC0(FUNC8(&node_kind, root, fs_path, scratch_pool));
  if (node_kind != svn_node_file)
    return FUNC7(FUNC1(stream, checksum, access,
                                               url, must_exist, node_kind));

  /* Fetch checksum and see whether we already have a matching config */
  FUNC0(FUNC9(checksum, svn_checksum_md5, root, fs_path,
                               TRUE, access->pool));

  *stream = FUNC2(root, fs_path, access->pool);

  return SVN_NO_ERROR;
}