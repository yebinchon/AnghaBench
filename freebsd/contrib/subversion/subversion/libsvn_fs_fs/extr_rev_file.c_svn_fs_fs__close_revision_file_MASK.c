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
struct TYPE_3__ {int /*<<< orphan*/ * p2l_stream; int /*<<< orphan*/ * l2p_stream; int /*<<< orphan*/ * stream; int /*<<< orphan*/ * file; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_fs_fs__revision_file_t *file)
{
  if (file->stream)
    FUNC0(FUNC2(file->stream));
  if (file->file)
    FUNC0(FUNC1(file->file, file->pool));

  file->file = NULL;
  file->stream = NULL;
  file->l2p_stream = NULL;
  file->p2l_stream = NULL;

  return SVN_NO_ERROR;
}