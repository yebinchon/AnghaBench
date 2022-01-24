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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {TYPE_2__* node_revision; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {scalar_t__ kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_MUTABLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC4(svn_stream_t **contents,
                              dag_node_t *file,
                              apr_pool_t *result_pool)
{
  /* Make sure our node is a file. */
  if (file->node_revision->kind != svn_node_file)
    return FUNC1
      (SVN_ERR_FS_NOT_FILE, NULL,
       "Attempted to set textual contents of a *non*-file node");

  /* Make sure our node is mutable. */
  if (! FUNC2(file))
    return FUNC1
      (SVN_ERR_FS_NOT_MUTABLE, NULL,
       "Attempted to set textual contents of an immutable node");

  FUNC0(FUNC3(contents, file->fs, file->node_revision,
                                 result_pool));
  return SVN_NO_ERROR;
}