#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  ra_session; int /*<<< orphan*/  pool; TYPE_5__* root_op; int /*<<< orphan*/  base_revision; } ;
typedef  TYPE_1__ svn_client__mtcc_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_9__ {scalar_t__ kind; void* performed_stat; } ;
typedef  TYPE_2__ mtcc_op_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/ * children; scalar_t__ kind; void* performed_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ OP_ADD_DIR ; 
 scalar_t__ OP_ADD_FILE ; 
 scalar_t__ OP_OPEN_DIR ; 
 scalar_t__ OP_OPEN_FILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC4 (char const*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,char const*,void*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,int /*<<< orphan*/ *,char const*,TYPE_5__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

svn_error_t *
FUNC11(svn_node_kind_t *kind,
                            const char *relpath,
                            svn_boolean_t check_repository,
                            svn_client__mtcc_t *mtcc,
                            apr_pool_t *scratch_pool)
{
  const char *origin_relpath;
  svn_revnum_t origin_rev;
  mtcc_op_t *op;

  FUNC2(FUNC10(relpath));

  if (FUNC4(relpath) && FUNC0(mtcc)
      && !mtcc->root_op->performed_stat)
    {
      /* We know nothing about the root. Perhaps it is a file? */
      FUNC1(FUNC9(mtcc->ra_session, "", mtcc->base_revision,
                                kind, scratch_pool));

      mtcc->root_op->performed_stat = TRUE;
      if (*kind == svn_node_file)
        {
          mtcc->root_op->kind = OP_OPEN_FILE;
          mtcc->root_op->children = NULL;
        }
      return SVN_NO_ERROR;
    }

  FUNC1(FUNC7(&op, NULL, relpath, mtcc->root_op, TRUE, FALSE,
                       FALSE, mtcc->pool, scratch_pool));

  if (!op || (check_repository && !op->performed_stat))
    {
      FUNC1(FUNC6(&origin_relpath, &origin_rev,
                              relpath, TRUE, mtcc,
                              scratch_pool, scratch_pool));

      if (!origin_relpath)
        *kind = svn_node_none;
      else
        FUNC1(FUNC9(mtcc->ra_session, origin_relpath,
                                  origin_rev, kind, scratch_pool));

      if (op && *kind == svn_node_dir)
        {
          if (op->kind == OP_OPEN_DIR || op->kind == OP_ADD_DIR)
            op->performed_stat = TRUE;
          else if (op->kind == OP_OPEN_FILE || op->kind == OP_ADD_FILE)
            return FUNC8(SVN_ERR_FS_NOT_FILE, NULL,
                                     FUNC5("Can't perform file operation "
                                       "on '%s' as it is not a file"),
                                     relpath);
        }
      else if (op && *kind == svn_node_file)
        {
          if (op->kind == OP_OPEN_FILE || op->kind == OP_ADD_FILE)
            op->performed_stat = TRUE;
          else if (op->kind == OP_OPEN_DIR || op->kind == OP_ADD_DIR)
            return FUNC8(SVN_ERR_FS_NOT_DIRECTORY, NULL,
                                     FUNC5("Can't perform directory operation "
                                       "on '%s' as it is not a directory"),
                                     relpath);
        }
      else if (op && (op->kind == OP_OPEN_DIR || op->kind == OP_OPEN_FILE))
        {
          return FUNC8(SVN_ERR_FS_NOT_FOUND, NULL,
                                   FUNC5("Can't open '%s' as it does not exist"),
                                   relpath);
        }

      return SVN_NO_ERROR;
    }

  /* op != NULL */
  if (op->kind == OP_OPEN_DIR || op->kind == OP_ADD_DIR)
    {
      *kind = svn_node_dir;
      return SVN_NO_ERROR;
    }
  else if (op->kind == OP_OPEN_FILE || op->kind == OP_ADD_FILE)
    {
      *kind = svn_node_file;
      return SVN_NO_ERROR;
    }
  FUNC3(); /* No other kinds defined as delete is filtered */
}