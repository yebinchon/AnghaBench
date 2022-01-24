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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  repos_root_url; } ;
struct TYPE_5__ {TYPE_1__ loc; } ;
typedef  TYPE_2__ merge_target_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const merge_target_t *target,
                  const char *local_abspath,
                  const char *url,
                  apr_pool_t *scratch_pool)
{
  if (!FUNC3(target->loc.repos_root_url, url))
    return FUNC2(
        SVN_ERR_UNSUPPORTED_FEATURE, NULL,
         FUNC0("URL '%s' of '%s' is not in repository '%s'"),
         url, FUNC1(local_abspath, scratch_pool),
         target->loc.repos_root_url);

  return SVN_NO_ERROR;
}