#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  src_abspath_or_url; int /*<<< orphan*/  dst_abspath_or_url; } ;
typedef  TYPE_2__ svn_client__copy_pair_t ;
struct handle_descendants_baton {TYPE_3__* committables; int /*<<< orphan*/  check_url_baton; int /*<<< orphan*/  check_url_func; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; } ;
struct copy_committables_baton {TYPE_3__* committables; int /*<<< orphan*/  check_url_baton; int /*<<< orphan*/  check_url_func; TYPE_1__* ctx; int /*<<< orphan*/  result_pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  by_repository; } ;
struct TYPE_4__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  handle_descendants ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct handle_descendants_baton*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton, void *item, apr_pool_t *pool)
{
  struct copy_committables_baton *btn = baton;
  svn_client__copy_pair_t *pair = *(svn_client__copy_pair_t **)item;
  const char *repos_root_url;
  const char *commit_relpath;
  struct handle_descendants_baton hdb;

  /* Read the entry for this SRC. */
  FUNC1(FUNC3(pair->src_abspath_or_url));

  FUNC0(FUNC6(NULL, NULL, &repos_root_url, NULL,
                                      btn->ctx->wc_ctx,
                                      pair->src_abspath_or_url,
                                      pool, pool));

  commit_relpath = FUNC5(repos_root_url,
                                         pair->dst_abspath_or_url, pool);

  /* Handle this SRC. */
  FUNC0(FUNC2(pair->src_abspath_or_url,
                               btn->committables, NULL,
                               commit_relpath,
                               svn_depth_infinity,
                               FALSE,  /* JUST_LOCKED */
                               NULL /* changelists */,
                               NULL,
                               btn->check_url_func,
                               btn->check_url_baton,
                               btn->ctx->cancel_func,
                               btn->ctx->cancel_baton,
                               btn->ctx->notify_func2,
                               btn->ctx->notify_baton2,
                               btn->ctx->wc_ctx, btn->result_pool, pool));

  hdb.wc_ctx = btn->ctx->wc_ctx;
  hdb.cancel_func = btn->ctx->cancel_func;
  hdb.cancel_baton = btn->ctx->cancel_baton;
  hdb.check_url_func = btn->check_url_func;
  hdb.check_url_baton = btn->check_url_baton;
  hdb.committables = btn->committables;

  FUNC0(FUNC4(NULL, btn->committables->by_repository,
                            handle_descendants, &hdb, pool));

  return SVN_NO_ERROR;
}