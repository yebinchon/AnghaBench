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
struct TYPE_6__ {int /*<<< orphan*/  name; scalar_t__ value; } ;
typedef  TYPE_1__ svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
struct TYPE_7__ {scalar_t__ old_props; int /*<<< orphan*/  prop_changes; } ;
typedef  TYPE_2__ proppatch_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_DAV_PROP_NS_CUSTOM ; 
 int /*<<< orphan*/  SVN_DAV_PROP_NS_DAV ; 
 int /*<<< orphan*/  SVN_DAV_PROP_NS_SVN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(serf_bucket_t **bkt,
                      void *baton,
                      serf_bucket_alloc_t *alloc,
                      apr_pool_t *pool /* request pool */,
                      apr_pool_t *scratch_pool)
{
  proppatch_context_t *ctx = baton;
  serf_bucket_t *body_bkt;
  svn_boolean_t opened = FALSE;
  apr_hash_index_t *hi;

  body_bkt = FUNC4(alloc);

  FUNC8(body_bkt, alloc);
  FUNC7(body_bkt, alloc, "D:propertyupdate",
                                    "xmlns:D", "DAV:",
                                    "xmlns:V", SVN_DAV_PROP_NS_DAV,
                                    "xmlns:C", SVN_DAV_PROP_NS_CUSTOM,
                                    "xmlns:S", SVN_DAV_PROP_NS_SVN,
                                    SVN_VA_NULL);

  /* First we write property SETs */
  for (hi = FUNC1(scratch_pool, ctx->prop_changes);
       hi;
       hi = FUNC2(hi))
    {
      svn_prop_t *prop = FUNC3(hi);

      if (prop->value
          || (ctx->old_props && FUNC5(ctx->old_props, prop->name)))
        {
          if (!opened)
            {
              opened = TRUE;
              FUNC7(body_bkt, alloc, "D:set",
                                                SVN_VA_NULL);
              FUNC7(body_bkt, alloc, "D:prop",
                                                SVN_VA_NULL);
            }

          FUNC0(FUNC9(ctx, body_bkt, alloc, prop,
                                 pool, scratch_pool));
        }
    }

  if (opened)
    {
      FUNC6(body_bkt, alloc, "D:prop");
      FUNC6(body_bkt, alloc, "D:set");
    }

  /* And then property REMOVEs */
  opened = FALSE;

  for (hi = FUNC1(scratch_pool, ctx->prop_changes);
       hi;
       hi = FUNC2(hi))
    {
      svn_prop_t *prop = FUNC3(hi);

      if (!prop->value
          && !(ctx->old_props && FUNC5(ctx->old_props, prop->name)))
        {
          if (!opened)
            {
              opened = TRUE;
              FUNC7(body_bkt, alloc, "D:remove",
                                                SVN_VA_NULL);
              FUNC7(body_bkt, alloc, "D:prop",
                                                SVN_VA_NULL);
            }

          FUNC0(FUNC9(ctx, body_bkt, alloc, prop,
                                 pool, scratch_pool));
        }
    }

  if (opened)
    {
      FUNC6(body_bkt, alloc, "D:prop");
      FUNC6(body_bkt, alloc, "D:remove");
    }

  FUNC6(body_bkt, alloc, "D:propertyupdate");

  *bkt = body_bkt;
  return SVN_NO_ERROR;
}