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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_svn_fs_open ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* create ) (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ fs_library_vtable_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  DEFAULT_FS_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_FS_TYPE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  common_pool ; 
 int /*<<< orphan*/  common_pool_lock ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_open2 ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_fs_t **fs_p,
               const char *path,
               apr_hash_t *fs_config,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  fs_library_vtable_t *vtable;

  const char *fs_type = FUNC5(fs_config,
                                              SVN_FS_CONFIG_FS_TYPE,
                                              DEFAULT_FS_TYPE);
  FUNC0(FUNC2(&vtable, fs_type, scratch_pool));

  /* Create the FS directory and write out the fsap-name file. */
  FUNC0(FUNC6(path, APR_OS_DEFAULT, scratch_pool));
  FUNC0(FUNC7(path, fs_type, scratch_pool));

  /* Perform the actual creation. */
  *fs_p = FUNC1(fs_config, result_pool);

  FUNC0(vtable->create(*fs_p, path, common_pool_lock, scratch_pool,
                         common_pool));
  FUNC0(vtable->set_svn_fs_open(*fs_p, svn_fs_open2));

  return SVN_NO_ERROR;
}