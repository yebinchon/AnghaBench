#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {TYPE_2__* node_revision; } ;
typedef  TYPE_1__ dag_node_t ;
struct TYPE_5__ {scalar_t__ kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC2(svn_filesize_t *length,
                          dag_node_t *file)
{
  /* Make sure our node is a file. */
  if (file->node_revision->kind != svn_node_file)
    return FUNC0
      (SVN_ERR_FS_NOT_FILE, NULL,
       "Attempted to get length of a *non*-file node");

  return FUNC1(length, file->node_revision);
}