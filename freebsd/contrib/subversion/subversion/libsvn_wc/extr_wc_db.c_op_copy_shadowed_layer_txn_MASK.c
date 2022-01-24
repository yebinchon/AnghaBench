#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct op_copy_baton {scalar_t__ is_move; scalar_t__* dst_relpath; int /*<<< orphan*/ * dst_wcroot; scalar_t__* src_relpath; int /*<<< orphan*/ * src_wcroot; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_REPOS_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ *,scalar_t__*,int,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_wc__db_wcroot_t *wcroot,
                           struct op_copy_baton *ocb,
                           apr_pool_t *scratch_pool)
{
  const char *src_parent_relpath;
  const char *dst_parent_relpath;
  int src_op_depth;
  int dst_op_depth;
  int del_op_depth;
  const char *repos_relpath = NULL;
  apr_int64_t repos_id = INVALID_REPOS_ID;
  svn_revnum_t revision = SVN_INVALID_REVNUM;

  if (wcroot != ocb->dst_wcroot)
    {
      /* Source and destination databases differ; so also start a lock
         in the destination database, by calling ourself in an extra lock. */

      FUNC2(FUNC10(ocb->dst_wcroot, ocb,
                                                     scratch_pool),
                          ocb->dst_wcroot);

      return SVN_NO_ERROR;
    }

  /* From this point we can assume a lock in the src and dst databases */


  /* src_relpath and dst_relpath can't be wcroot as we need their parents */
  FUNC1(*ocb->src_relpath && *ocb->dst_relpath);

  src_parent_relpath = FUNC7(ocb->src_relpath, scratch_pool);
  dst_parent_relpath = FUNC7(ocb->dst_relpath, scratch_pool);

  /* src_parent must be status normal or added; get its op-depth */
  FUNC0(FUNC4(&src_op_depth, ocb->src_wcroot, src_parent_relpath));

  /* dst_parent must be status added; get its op-depth */
  FUNC0(FUNC4(&dst_op_depth, ocb->dst_wcroot, dst_parent_relpath));

  del_op_depth = FUNC5(ocb->dst_relpath);

  /* Get some information from the parent */
  FUNC0(FUNC9(NULL, NULL, &revision, &repos_relpath,
                                    &repos_id, NULL, NULL, NULL, NULL, NULL,
                                    NULL, NULL, NULL,
                                    ocb->src_wcroot,
                                    src_parent_relpath, src_op_depth,
                                    scratch_pool, scratch_pool));

  if (repos_relpath == NULL)
    {
      /* The node is a local addition and has no shadowed information */
      return SVN_NO_ERROR;
    }

  /* And calculate the child repos relpath */
  repos_relpath = FUNC8(repos_relpath,
                                   FUNC6(ocb->src_relpath,
                                                        NULL),
                                   scratch_pool);

  FUNC0(FUNC3(
                        ocb->src_wcroot, ocb->src_relpath, src_op_depth,
                        ocb->dst_wcroot, ocb->dst_relpath, dst_op_depth,
                        del_op_depth,
                        repos_id, repos_relpath, revision,
                        (ocb->is_move ? dst_op_depth : 0),
                        scratch_pool));

  return SVN_NO_ERROR;
}