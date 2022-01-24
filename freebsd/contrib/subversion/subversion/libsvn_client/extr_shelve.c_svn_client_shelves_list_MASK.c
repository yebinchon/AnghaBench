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
struct TYPE_8__ {scalar_t__ kind; int /*<<< orphan*/  mtime; } ;
typedef  TYPE_1__ svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  patch_path; int /*<<< orphan*/  message; TYPE_1__* dirent; int /*<<< orphan*/  mtime; } ;
typedef  TYPE_2__ svn_client_shelved_patch_info_t ;
struct TYPE_10__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC13 (char**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(apr_hash_t **shelved_patch_infos,
                        const char *local_abspath,
                        svn_client_ctx_t *ctx,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  char *shelves_dir;
  apr_hash_t *dirents;
  apr_hash_index_t *hi;

  FUNC0(FUNC13(&shelves_dir, ctx->wc_ctx, local_abspath,
                                  scratch_pool, scratch_pool));
  FUNC0(FUNC12(&dirents, shelves_dir, FALSE /*only_check_type*/,
                              result_pool, scratch_pool));

  *shelved_patch_infos = FUNC2(result_pool);

  /* Remove non-shelves */
  for (hi = FUNC1(scratch_pool, dirents); hi; hi = FUNC3(hi))
    {
      const char *filename = FUNC4(hi);
      svn_io_dirent2_t *dirent = FUNC5(hi);
      char *name = NULL;

      FUNC10(FUNC8(&name, filename, result_pool));
      if (name && dirent->kind == svn_node_file)
        {
          svn_client_shelved_patch_info_t *info
            = FUNC6(result_pool, sizeof(*info));

          info->dirent = dirent;
          info->mtime = info->dirent->mtime;
          info->patch_path
            = FUNC9(shelves_dir, filename, result_pool);
          FUNC0(FUNC7(&info->message, info->patch_path,
                                         result_pool, scratch_pool));

          FUNC11(*shelved_patch_infos, name, info);
        }
    }

  return SVN_NO_ERROR;
}