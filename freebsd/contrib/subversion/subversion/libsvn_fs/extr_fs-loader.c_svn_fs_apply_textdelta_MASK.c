#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* apply_textdelta ) (int /*<<< orphan*/ *,void**,TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**,TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC4(svn_txdelta_window_handler_t *contents_p,
                       void **contents_baton_p, svn_fs_root_t *root,
                       const char *path, const char *base_checksum,
                       const char *result_checksum, apr_pool_t *pool)
{
  svn_checksum_t *base, *result;

  /* TODO: If we ever rev this API, we should make the supplied checksums
     svn_checksum_t structs. */
  FUNC0(FUNC2(&base, svn_checksum_md5, base_checksum,
                                 pool));
  FUNC0(FUNC2(&result, svn_checksum_md5, result_checksum,
                                 pool));

  return FUNC3(root->vtable->apply_textdelta(contents_p,
                                                       contents_baton_p,
                                                       root,
                                                       path,
                                                       base,
                                                       result,
                                                       pool));
}