#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  rev ;
struct TYPE_2__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  paths; } ;
typedef  TYPE_1__ loc_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int LOCATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int leaving_state,
              const svn_string_t *cdata,
              apr_hash_t *attrs,
              apr_pool_t *scratch_pool)
{
  loc_context_t *loc_ctx = baton;
  const char *revstr;
  const char *path;

  FUNC1(leaving_state == LOCATION);

  revstr = FUNC6(attrs, "rev");
  path = FUNC6(attrs, "path");
  if (revstr != NULL && path != NULL)
    {
      apr_int64_t rev_val;
      svn_revnum_t rev;

      FUNC0(FUNC5(&rev_val, revstr));
      rev = (svn_revnum_t)rev_val;

      FUNC2(loc_ctx->paths,
                   FUNC3(loc_ctx->pool, &rev, sizeof(rev)), sizeof(rev),
                   FUNC4(loc_ctx->pool, path));
    }

  return SVN_NO_ERROR;
}