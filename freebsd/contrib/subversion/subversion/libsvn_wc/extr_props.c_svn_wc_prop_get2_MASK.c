#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_PROP_KIND ; 
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int svn_prop_entry_kind ; 
 int FUNC6 (char const*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const svn_string_t **value,
                 svn_wc_context_t *wc_ctx,
                 const char *local_abspath,
                 const char *name,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  enum svn_prop_kind kind = FUNC6(name);
  svn_error_t *err;

  FUNC0(FUNC2(local_abspath));

  if (kind == svn_prop_entry_kind)
    {
      /* we don't do entry properties here */
      return FUNC4(SVN_ERR_BAD_PROP_KIND, NULL,
                               FUNC1("Property '%s' is an entry property"), name);
    }

  err = FUNC7(value, wc_ctx->db, local_abspath, name,
                                 result_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
        return FUNC5(err);

      FUNC3(err);
      /* Documented behavior is to set *VALUE to NULL */
      *value = NULL;
    }

  return SVN_NO_ERROR;
}