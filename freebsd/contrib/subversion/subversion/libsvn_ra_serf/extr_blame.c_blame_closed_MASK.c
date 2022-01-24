#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
struct TYPE_4__ {char const* name; int /*<<< orphan*/  const* value; } ;
typedef  TYPE_1__ svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  prop_diffs; int /*<<< orphan*/  rev_props; int /*<<< orphan*/  state_pool; int /*<<< orphan*/ * stream; int /*<<< orphan*/  file_rev_baton; int /*<<< orphan*/  (* file_rev ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ blame_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FILE_REV ; 
 int MERGED_REVISION ; 
 int REMOVE_PROP ; 
 int REV_PROP ; 
 int SET_PROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int TXDELTA ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_ra_serf__xml_estate_t *xes,
             void *baton,
             int leaving_state,
             const svn_string_t *cdata,
             apr_hash_t *attrs,
             apr_pool_t *scratch_pool)
{
  blame_context_t *blame_ctx = baton;

  if (leaving_state == FILE_REV)
    {
      /* Note that we test STREAM, but any pointer is currently invalid.
         It was closed when left the TXDELTA state.  */
      if (blame_ctx->stream == NULL)
        {
          const char *path;
          const char *rev;

          path = FUNC8(attrs, "path");
          rev = FUNC8(attrs, "rev");

          /* Send a "no content" notification.  */
          FUNC0(blame_ctx->file_rev(blame_ctx->file_rev_baton,
                                      path, FUNC2(rev),
                                      blame_ctx->rev_props,
                                      FALSE /* result_of_merge */,
                                      NULL, NULL, /* txdelta / baton */
                                      blame_ctx->prop_diffs,
                                      scratch_pool));
        }
    }
  else if (leaving_state == MERGED_REVISION)
    {
      FUNC10(xes, FILE_REV, "merged-revision", "*");
    }
  else if (leaving_state == TXDELTA)
    {
      FUNC0(FUNC11(blame_ctx->stream));
    }
  else
    {
      const char *name;
      const svn_string_t *value;

      FUNC1(leaving_state == REV_PROP
                     || leaving_state == SET_PROP
                     || leaving_state == REMOVE_PROP);

      name = FUNC4(blame_ctx->state_pool,
                         FUNC8(attrs, "name"));

      if (leaving_state == REMOVE_PROP)
        {
          value = NULL;
        }
      else
        {
          const char *encoding = FUNC8(attrs, "encoding");

          if (encoding && FUNC5(encoding, "base64") == 0)
            value = FUNC7(cdata, blame_ctx->state_pool);
          else
            value = FUNC12(cdata, blame_ctx->state_pool);
        }

      if (leaving_state == REV_PROP)
        {
          FUNC9(blame_ctx->rev_props, name, value);
        }
      else
        {
          svn_prop_t *prop = FUNC3(blame_ctx->prop_diffs);

          prop->name = name;
          prop->value = value;
        }
    }

  return SVN_NO_ERROR;
}