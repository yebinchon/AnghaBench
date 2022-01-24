#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  mime_type; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
struct TYPE_9__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MIME_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_add ; 

svn_error_t *
FUNC8(svn_wc_context_t *wc_ctx,
                      const char *local_abspath,
                      const apr_hash_t *props,
                      svn_boolean_t skip_checks,
                      svn_wc_notify_func2_t notify_func,
                      void *notify_baton,
                      apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;

  FUNC0(FUNC2(&kind, NULL, NULL, wc_ctx->db, local_abspath,
                             NULL, SVN_INVALID_REVNUM, scratch_pool));
  FUNC0(FUNC3(NULL, NULL, wc_ctx->db, local_abspath,
                                  scratch_pool, scratch_pool));

  /* Canonicalize and check the props */
  if (props)
    {
      apr_hash_t *new_props;

      FUNC0(FUNC6(
                &new_props,
                local_abspath, kind, props, skip_checks,
                scratch_pool, scratch_pool));
      props = new_props;
    }

  /* Add to the DB and maybe update on-disk executable read-only bits */
  FUNC0(FUNC1(wc_ctx->db, local_abspath, kind, props,
                        scratch_pool));

  /* Report the addition to the caller. */
  if (notify_func != NULL)
    {
      svn_wc_notify_t *notify = FUNC7(local_abspath,
                                                     svn_wc_notify_add,
                                                     scratch_pool);
      notify->kind = kind;
      notify->mime_type = FUNC5(props, SVN_PROP_MIME_TYPE);
      (*notify_func)(notify_baton, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}