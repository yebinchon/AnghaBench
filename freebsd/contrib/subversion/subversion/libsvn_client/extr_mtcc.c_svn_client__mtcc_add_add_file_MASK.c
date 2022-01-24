#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  pool; TYPE_2__* root_op; } ;
typedef  TYPE_1__ svn_client__mtcc_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_9__ {int /*<<< orphan*/ * src_checksum; int /*<<< orphan*/ * src_stream; int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ mtcc_op_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  OP_ADD_FILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ *,char const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 

svn_error_t *
FUNC10(const char *relpath,
                              svn_stream_t *src_stream,
                              const svn_checksum_t *src_checksum,
                              svn_client__mtcc_t *mtcc,
                              apr_pool_t *scratch_pool)
{
  mtcc_op_t *op;
  svn_boolean_t created;
  FUNC2(FUNC9(relpath) && src_stream);

  FUNC1(FUNC6(mtcc, relpath, scratch_pool));

  if (FUNC3(relpath) && FUNC0(mtcc))
    {
      /* Turn the root operation into a file addition */
      op = mtcc->root_op;
    }
  else
    {
      FUNC1(FUNC5(&op, &created, relpath, mtcc->root_op, FALSE, FALSE,
                           TRUE, mtcc->pool, scratch_pool));

      if (!op || !created)
        {
          return FUNC8(SVN_ERR_ILLEGAL_TARGET, NULL,
                                   FUNC4("Can't add file at '%s'"),
                                   relpath);
        }
    }

  op->kind = OP_ADD_FILE;
  op->src_stream = src_stream;
  op->src_checksum = src_checksum ? FUNC7(src_checksum, mtcc->pool)
                                  : NULL;

  return SVN_NO_ERROR;
}