#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ svn_checksum_t ;
struct TYPE_15__ {TYPE_1__* node_revision; } ;
typedef  TYPE_3__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {int /*<<< orphan*/  created_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__ const*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

svn_error_t *
FUNC6(dag_node_t *file,
                             const svn_checksum_t *checksum,
                             apr_pool_t *scratch_pool)
{
  if (checksum)
    {
      svn_checksum_t *file_checksum;

      FUNC0(FUNC4(&file_checksum, file,
                                          checksum->kind, scratch_pool));
      if (!FUNC2(checksum, file_checksum))
        return FUNC3(checksum, file_checksum,
                                         scratch_pool,
                                         FUNC1("Checksum mismatch for '%s'"),
                                         file->node_revision->created_path);
    }

  FUNC5(file);
  return SVN_NO_ERROR;
}