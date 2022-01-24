#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_magic__cookie_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_BOOLEAN_TRUE ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char *local_abspath,
         svn_magic__cookie_t *magic_cookie,
         apr_hash_t *autoprops,
         svn_boolean_t no_autoprops,
         svn_client_ctx_t *ctx,
         apr_pool_t *pool)
{
  apr_hash_t *properties;
  const char *mimetype;
  svn_node_kind_t kind;
  svn_boolean_t is_special;

  /* Check to see if this is a special file. */
  FUNC0(FUNC6(local_abspath, &kind, &is_special, pool));

  /* Determine the properties that the file should have */
  if (is_special)
    {
      mimetype = NULL;
      properties = FUNC1(pool);
      FUNC5(properties, SVN_PROP_SPECIAL,
                    FUNC7(SVN_PROP_BOOLEAN_TRUE, pool));
    }
  else
    {
      apr_hash_t *file_autoprops = NULL;

      /* Get automatic properties */
      /* If we are setting autoprops grab the inherited svn:auto-props and
         config file auto-props for this file if we haven't already got them
         when iterating over the file's unversioned parents. */
      if (!no_autoprops)
        {
          if (autoprops == NULL)
            FUNC0(FUNC2(
              &file_autoprops, FUNC4(local_abspath,pool),
              ctx, pool, pool));
          else
            file_autoprops = autoprops;
        }

      /* This may fail on write-only files:
         we open them to estimate file type. */
      FUNC0(FUNC3(&properties, &mimetype,
                                               local_abspath, magic_cookie,
                                               file_autoprops, ctx, pool,
                                               pool));
    }

  /* Add the file */
  FUNC0(FUNC8(ctx->wc_ctx, local_abspath, properties,
                                FALSE /* skip checks */,
                                ctx->notify_func2, ctx->notify_baton2, pool));

  return SVN_NO_ERROR;
}