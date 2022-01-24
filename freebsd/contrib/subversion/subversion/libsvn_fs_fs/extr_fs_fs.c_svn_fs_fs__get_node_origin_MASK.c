#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_7__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_2__ svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_INT64_BUFFER_SIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(const svn_fs_id_t **origin_id,
                           svn_fs_t *fs,
                           const svn_fs_fs__id_part_t *node_id,
                           apr_pool_t *pool)
{
  apr_hash_t *node_origins;

  *origin_id = NULL;
  FUNC0(FUNC3(fs, &node_origins,
                                     FUNC6(fs, node_id,
                                                                 pool),
                                     pool));
  if (node_origins)
    {
      char node_id_ptr[SVN_INT64_BUFFER_SIZE];
      apr_size_t len = FUNC4(node_id_ptr, node_id->number);
      svn_string_t *origin_id_str
        = FUNC1(node_origins, node_id_ptr, len);

      if (origin_id_str)
        FUNC0(FUNC5(origin_id,
                                    FUNC2(pool, origin_id_str->data),
                                    pool));
    }
  return SVN_NO_ERROR;
}