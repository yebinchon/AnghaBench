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
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ head_revision; int /*<<< orphan*/  pool; int /*<<< orphan*/  root_op; int /*<<< orphan*/  ra_session; } ;
typedef  TYPE_1__ svn_client__mtcc_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_7__ {scalar_t__ src_rev; int /*<<< orphan*/  src_relpath; int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ mtcc_op_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_ADD_DIR ; 
 int /*<<< orphan*/  OP_ADD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*) ; 

svn_error_t *
FUNC10(const char *src_relpath,
                          svn_revnum_t revision,
                          const char *dst_relpath,
                          svn_client__mtcc_t *mtcc,
                          apr_pool_t *scratch_pool)
{
  mtcc_op_t *op;
  svn_boolean_t created;
  svn_node_kind_t kind;

  FUNC1(FUNC9(src_relpath)
                 && FUNC9(dst_relpath));

  if (! FUNC2(revision))
    revision = mtcc->head_revision;
  else if (revision > mtcc->head_revision)
    {
      return FUNC7(SVN_ERR_FS_NO_SUCH_REVISION, NULL,
                               FUNC3("No such revision %ld"), revision);
    }

  FUNC0(FUNC6(mtcc, dst_relpath, scratch_pool));

  /* Subversion requires the kind of a copy */
  FUNC0(FUNC8(mtcc->ra_session, src_relpath, revision, &kind,
                            scratch_pool));

  if (kind != svn_node_dir && kind != svn_node_file)
    {
      return FUNC7(SVN_ERR_FS_NOT_FOUND, NULL,
                               FUNC3("Path '%s' not found in revision %ld"),
                               src_relpath, revision);
    }

  FUNC0(FUNC5(&op, &created, dst_relpath, mtcc->root_op, FALSE, FALSE,
                       (kind == svn_node_file), mtcc->pool, scratch_pool));

  if (!op || !created)
    {
      return FUNC7(SVN_ERR_ILLEGAL_TARGET, NULL,
                               FUNC3("Can't add node at '%s'"),
                               dst_relpath);
    }

  op->kind = (kind == svn_node_file) ? OP_ADD_FILE : OP_ADD_DIR;
  op->src_relpath = FUNC4(mtcc->pool, src_relpath);
  op->src_rev = revision;

  return SVN_NO_ERROR;
}