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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct rep_write_baton {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  rep_write_contents ; 
 int /*<<< orphan*/  rep_write_contents_close ; 
 int /*<<< orphan*/  FUNC2 (struct rep_write_baton**,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct rep_write_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_stream_t **contents_p,
                   svn_fs_t *fs,
                   node_revision_t *noderev,
                   apr_pool_t *pool)
{
  struct rep_write_baton *wb;

  if (! FUNC4(noderev->id))
    return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                             FUNC1("Attempted to write to non-transaction '%s'"),
                             FUNC5(noderev->id, pool)->data);

  FUNC0(FUNC2(&wb, fs, noderev, pool));

  *contents_p = FUNC6(wb, pool);
  FUNC8(*contents_p, rep_write_contents);
  FUNC7(*contents_p, rep_write_contents_close);

  return SVN_NO_ERROR;
}