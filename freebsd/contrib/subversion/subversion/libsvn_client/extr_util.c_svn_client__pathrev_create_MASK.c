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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_4__ {void* url; int /*<<< orphan*/  rev; void* repos_uuid; void* repos_root_url; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

svn_client__pathrev_t *
FUNC4(const char *repos_root_url,
                           const char *repos_uuid,
                           svn_revnum_t rev,
                           const char *url,
                           apr_pool_t *result_pool)
{
  svn_client__pathrev_t *loc = FUNC1(result_pool, sizeof(*loc));

  FUNC0(FUNC3(repos_root_url));
  FUNC0(FUNC3(url));

  loc->repos_root_url = FUNC2(result_pool, repos_root_url);
  loc->repos_uuid = FUNC2(result_pool, repos_uuid);
  loc->rev = rev;
  loc->url = FUNC2(result_pool, url);
  return loc;
}