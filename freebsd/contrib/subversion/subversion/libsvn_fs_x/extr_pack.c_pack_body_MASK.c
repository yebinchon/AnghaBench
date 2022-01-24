#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int min_unpacked_rev; int max_files_per_dir; int youngest_rev_cache; scalar_t__ compress_packed_revprops; int /*<<< orphan*/  revprop_pack_size; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  (* cancel_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  max_mem; TYPE_3__* fs; } ;
typedef  TYPE_2__ pack_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  path; TYPE_1__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_REVS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN__COMPRESSION_NONE ; 
 int /*<<< orphan*/  SVN__COMPRESSION_ZLIB_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,TYPE_3__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_pack_notify_noop ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton,
          apr_pool_t *scratch_pool)
{
  pack_baton_t *pb = baton;
  svn_fs_x__data_t *ffd = pb->fs->fsap_data;
  apr_int64_t completed_shards;
  apr_int64_t i;
  apr_pool_t *iterpool;
  const char *data_path;
  svn_boolean_t fully_packed;

  /* Since another process might have already packed the repo,
     we need to re-read the pack status. */
  FUNC0(FUNC1(&fully_packed, pb->fs, scratch_pool));
  if (fully_packed)
    {
      if (pb->notify_func)
        (*pb->notify_func)(pb->notify_baton,
                           ffd->min_unpacked_rev / ffd->max_files_per_dir,
                           svn_fs_pack_notify_noop, scratch_pool);

      return SVN_NO_ERROR;
    }

  completed_shards = (ffd->youngest_rev_cache + 1) / ffd->max_files_per_dir;
  data_path = FUNC5(pb->fs->path, PATH_REVS_DIR, scratch_pool);

  iterpool = FUNC7(scratch_pool);
  for (i = ffd->min_unpacked_rev / ffd->max_files_per_dir;
       i < completed_shards;
       i++)
    {
      FUNC6(iterpool);

      if (pb->cancel_func)
        FUNC0(pb->cancel_func(pb->cancel_baton));

      FUNC0(FUNC2(data_path,
                         pb->fs, i, ffd->max_files_per_dir,
                         ffd->revprop_pack_size,
                         ffd->compress_packed_revprops
                           ? SVN__COMPRESSION_ZLIB_DEFAULT
                           : SVN__COMPRESSION_NONE,
                         pb->max_mem,
                         pb->notify_func, pb->notify_baton,
                         pb->cancel_func, pb->cancel_baton, iterpool));
    }

  FUNC8(iterpool);
  return SVN_NO_ERROR;
}