#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct pack_baton {int shard; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  (* cancel_func ) (int /*<<< orphan*/ ) ;TYPE_2__* fs; void* revsprops_dir; void* revs_dir; int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int min_unpacked_rev; int max_files_per_dir; int youngest_rev_cache; scalar_t__ format; } ;
typedef  TYPE_1__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  path; TYPE_1__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_REVPROPS_DIR ; 
 int /*<<< orphan*/  PATH_REVS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pack_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_pack_notify_noop ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton,
          apr_pool_t *pool)
{
  struct pack_baton *pb = baton;
  fs_fs_data_t *ffd = pb->fs->fsap_data;
  apr_int64_t completed_shards;
  apr_pool_t *iterpool;
  svn_boolean_t fully_packed;

  /* Since another process might have already packed the repo,
     we need to re-read the pack status. */
  FUNC0(FUNC1(&fully_packed, pb->fs, pool));
  if (fully_packed)
    {
      if (pb->notify_func)
        (*pb->notify_func)(pb->notify_baton,
                           ffd->min_unpacked_rev / ffd->max_files_per_dir,
                           svn_fs_pack_notify_noop, pool);

      return SVN_NO_ERROR;
    }

  completed_shards = (ffd->youngest_rev_cache + 1) / ffd->max_files_per_dir;
  pb->revs_dir = FUNC5(pb->fs->path, PATH_REVS_DIR, pool);
  if (ffd->format >= SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT)
    pb->revsprops_dir = FUNC5(pb->fs->path, PATH_REVPROPS_DIR,
                                        pool);

  iterpool = FUNC7(pool);
  for (pb->shard = ffd->min_unpacked_rev / ffd->max_files_per_dir;
       pb->shard < completed_shards;
       pb->shard++)
    {
      FUNC6(iterpool);

      if (pb->cancel_func)
        FUNC0(pb->cancel_func(pb->cancel_baton));

      FUNC0(FUNC2(pb, iterpool));
    }

  FUNC8(iterpool);
  return SVN_NO_ERROR;
}