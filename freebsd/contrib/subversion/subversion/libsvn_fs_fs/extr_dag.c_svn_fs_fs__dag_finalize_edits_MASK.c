#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_checksum_t ;
struct TYPE_12__ {int /*<<< orphan*/  created_path; } ;
typedef  TYPE_2__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__ const*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(dag_node_t *file,
                              const svn_checksum_t *checksum,
                              apr_pool_t *pool)
{
  if (checksum)
    {
      svn_checksum_t *file_checksum;

      FUNC0(FUNC4(&file_checksum, file,
                                           checksum->kind, pool));
      if (!FUNC2(checksum, file_checksum))
        return FUNC3(checksum, file_checksum, pool,
                                         FUNC1("Checksum mismatch for '%s'"),
                                         file->created_path);
    }

  return SVN_NO_ERROR;
}