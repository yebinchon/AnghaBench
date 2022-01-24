#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_4__ {scalar_t__ head_revision; scalar_t__ base_revision; int /*<<< orphan*/  ra_session; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  root_op; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ svn_client__mtcc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_client__mtcc_t **mtcc,
                        const char *anchor_url,
                        svn_revnum_t base_revision,
                        svn_client_ctx_t *ctx,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  apr_pool_t *mtcc_pool;

  mtcc_pool = FUNC7(result_pool);

  *mtcc = FUNC3(mtcc_pool, sizeof(**mtcc));
  (*mtcc)->pool = mtcc_pool;

  (*mtcc)->root_op = FUNC4(NULL, FALSE, TRUE, mtcc_pool);

  (*mtcc)->ctx = ctx;

  FUNC0(FUNC5(&(*mtcc)->ra_session, anchor_url,
                                      NULL /* wri_abspath */, ctx,
                                      mtcc_pool, scratch_pool));

  FUNC0(FUNC8((*mtcc)->ra_session, &(*mtcc)->head_revision,
                                   scratch_pool));

  if (FUNC1(base_revision))
    (*mtcc)->base_revision = base_revision;
  else
    (*mtcc)->base_revision = (*mtcc)->head_revision;

  if ((*mtcc)->base_revision > (*mtcc)->head_revision)
    return FUNC6(SVN_ERR_FS_NO_SUCH_REVISION, NULL,
                             FUNC2("No such revision %ld (HEAD is %ld)"),
                             base_revision, (*mtcc)->head_revision);

  return SVN_NO_ERROR;
}