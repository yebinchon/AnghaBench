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
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_hotcopy_notify_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* hotcopy ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ fs_library_vtable_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FS_TYPE_FILENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNEXPECTED_KIND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  common_pool ; 
 int /*<<< orphan*/  common_pool_lock ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(const char *src_path, const char *dst_path,
                svn_boolean_t clean, svn_boolean_t incremental,
                svn_fs_hotcopy_notify_t notify_func,
                void *notify_baton,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  fs_library_vtable_t *vtable;
  const char *src_fs_type;
  svn_fs_t *src_fs;
  svn_fs_t *dst_fs;
  const char *dst_fs_type;
  svn_node_kind_t dst_kind;

  if (FUNC4(src_path, dst_path) == 0)
    return FUNC8(SVN_ERR_INCORRECT_PARAMS, NULL,
                             FUNC1("Hotcopy source and destination are equal"));

  FUNC0(FUNC11(&src_fs_type, src_path, scratch_pool));
  FUNC0(FUNC3(&vtable, src_fs_type, scratch_pool));
  src_fs = FUNC2(NULL, scratch_pool);
  dst_fs = FUNC2(NULL, scratch_pool);

  FUNC0(FUNC12(dst_path, &dst_kind, scratch_pool));
  if (dst_kind == svn_node_file)
    return FUNC9(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC1("'%s' already exists and is a file"),
                             FUNC7(dst_path,
                                                    scratch_pool));
  if (dst_kind == svn_node_unknown)
    return FUNC9(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC1("'%s' already exists and has an unknown "
                               "node kind"),
                             FUNC7(dst_path,
                                                    scratch_pool));
  if (dst_kind == svn_node_dir)
    {
      svn_node_kind_t type_file_kind;

      FUNC0(FUNC12(FUNC6(dst_path,
                                                FS_TYPE_FILENAME,
                                                scratch_pool),
                                &type_file_kind, scratch_pool));
      if (type_file_kind != svn_node_none)
        {
          FUNC0(FUNC11(&dst_fs_type, dst_path, scratch_pool));
          if (FUNC4(src_fs_type, dst_fs_type) != 0)
            return FUNC9(
                     SVN_ERR_ILLEGAL_TARGET, NULL,
                     FUNC1("The filesystem type of the hotcopy source "
                       "('%s') does not match the filesystem "
                       "type of the hotcopy destination ('%s')"),
                     src_fs_type, dst_fs_type);
        }
    }

  FUNC0(vtable->hotcopy(src_fs, dst_fs, src_path, dst_path, clean,
                          incremental, notify_func, notify_baton,
                          cancel_func, cancel_baton, common_pool_lock,
                          scratch_pool, common_pool));
  return FUNC10(FUNC13(dst_path, src_fs_type, scratch_pool));
}