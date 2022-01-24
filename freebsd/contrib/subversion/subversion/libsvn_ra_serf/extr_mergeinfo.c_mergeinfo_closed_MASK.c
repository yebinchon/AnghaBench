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
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  result_catalog; } ;
typedef  TYPE_2__ mergeinfo_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int MERGEINFO_INFO ; 
 int MERGEINFO_ITEM ; 
 int MERGEINFO_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_ra_serf__xml_estate_t *xes,
                 void *baton,
                 int leaving_state,
                 const svn_string_t *cdata,
                 apr_hash_t *attrs,
                 apr_pool_t *scratch_pool)
{
  mergeinfo_context_t *mergeinfo_ctx = baton;

  if (leaving_state == MERGEINFO_ITEM)
    {
      /* Placed here from the child elements.  */
      const char *path = FUNC3(attrs, "path");
      const char *info = FUNC3(attrs, "info");

      if (path != NULL && info != NULL)
        {
          svn_mergeinfo_t path_mergeinfo;

          /* Correct for naughty servers that send "relative" paths
             with leading slashes! */
          if (path[0] == '/')
            ++path;

          FUNC0(FUNC5(&path_mergeinfo, info,
                                      mergeinfo_ctx->pool));

          FUNC4(mergeinfo_ctx->result_catalog,
                        FUNC2(mergeinfo_ctx->pool, path),
                        path_mergeinfo);
        }
    }
  else
    {
      FUNC1(leaving_state == MERGEINFO_PATH
                     || leaving_state == MERGEINFO_INFO);

      /* Stash the value onto the parent MERGEINFO_ITEM.  */
      FUNC6(xes, MERGEINFO_ITEM,
                            leaving_state == MERGEINFO_PATH
                              ? "path"
                              : "info",
                            cdata->data);
    }

  return SVN_NO_ERROR;
}