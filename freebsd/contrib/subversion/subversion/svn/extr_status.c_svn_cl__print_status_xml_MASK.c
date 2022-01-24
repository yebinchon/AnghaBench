#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {char* local_abspath; scalar_t__ node_status; scalar_t__ repos_node_status; scalar_t__ prop_status; scalar_t__ repos_prop_status; int /*<<< orphan*/  repos_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  changed_date; int /*<<< orphan*/  changed_author; int /*<<< orphan*/  changed_rev; scalar_t__ moved_to_abspath; scalar_t__ moved_from_abspath; int /*<<< orphan*/  revision; scalar_t__ copied; scalar_t__ versioned; scalar_t__ file_external; scalar_t__ switched; scalar_t__ wc_is_locked; scalar_t__ conflicted; } ;
typedef  TYPE_2__ svn_client_status_t ;
struct TYPE_16__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 char const* FUNC6 (scalar_t__) ; 
 char* FUNC7 (char const*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_status_deleted ; 
 scalar_t__ svn_wc_status_none ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_xml_normal ; 

svn_error_t *
FUNC19(const char *target_abspath,
                         const char *target_path,
                         const char *path,
                         const svn_client_status_t *status,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *pool)
{
  svn_stringbuf_t *sb = FUNC13(pool);
  apr_hash_t *att_hash;
  const char *local_abspath = status->local_abspath;
  svn_boolean_t tree_conflicted = FALSE;

  if (status->node_status == svn_wc_status_none
      && status->repos_node_status == svn_wc_status_none)
    return SVN_NO_ERROR;

  if (status->conflicted)
    FUNC0(FUNC15(NULL, NULL, &tree_conflicted,
                                 ctx->wc_ctx, local_abspath, pool));

  FUNC17(&sb, pool, svn_xml_normal, "entry",
                        "path", FUNC11(path, pool),
                        SVN_VA_NULL);

  att_hash = FUNC2(pool);
  FUNC12(att_hash, "item",
                FUNC6(FUNC5(status)));

  FUNC12(att_hash, "props",
                FUNC6(
                   (status->node_status != svn_wc_status_deleted)
                   ? status->prop_status
                   : svn_wc_status_none));
  if (status->wc_is_locked)
    FUNC12(att_hash, "wc-locked", "true");
  if (status->copied)
    FUNC12(att_hash, "copied", "true");
  if (status->switched)
    FUNC12(att_hash, "switched", "true");
  if (status->file_external)
    FUNC12(att_hash, "file-external", "true");
  if (status->versioned && ! status->copied)
    FUNC12(att_hash, "revision",
                  FUNC3(pool, "%ld", status->revision));
  if (tree_conflicted)
    FUNC12(att_hash, "tree-conflicted", "true");
  if (status->moved_from_abspath || status->moved_to_abspath)
    {
      const char *relpath;

      if (status->moved_from_abspath)
        {
          relpath = FUNC7(target_abspath, target_path,
                                 status->moved_from_abspath,
                                 pool, pool);
          relpath = FUNC11(relpath, pool);
          FUNC12(att_hash, "moved-from", relpath);
        }
      if (status->moved_to_abspath)
        {
          relpath = FUNC7(target_abspath, target_path,
                                 status->moved_to_abspath,
                                 pool, pool);
          relpath = FUNC11(relpath, pool);
          FUNC12(att_hash, "moved-to", relpath);
        }
    }
  FUNC18(&sb, pool, svn_xml_normal, "wc-status",
                             att_hash);

  if (FUNC1(status->changed_rev))
    {
      FUNC9(&sb, status->changed_rev,
                               status->changed_author,
                               FUNC14(status->changed_date,
                                                   pool),
                               pool);
    }

  if (status->lock)
    FUNC10(&sb, status->lock, pool);

  FUNC16(&sb, pool, "wc-status");

  if (status->repos_node_status != svn_wc_status_none
      || status->repos_lock)
    {
      FUNC17(&sb, pool, svn_xml_normal, "repos-status",
                            "item",
                            FUNC6(FUNC4(status)),
                            "props",
                            FUNC6(status->repos_prop_status),
                            SVN_VA_NULL);
      if (status->repos_lock)
        FUNC10(&sb, status->repos_lock, pool);

      FUNC16(&sb, pool, "repos-status");
    }

  FUNC16(&sb, pool, "entry");

  return FUNC8(sb->data, stdout);
}