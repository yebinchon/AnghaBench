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
typedef  int /*<<< orphan*/ * svn_repos_authz_func_t ;
struct TYPE_5__ {TYPE_1__* repository; } ;
typedef  TYPE_2__ server_baton_t ;
struct TYPE_4__ {scalar_t__ authzdb; } ;

/* Variables and functions */
 int /*<<< orphan*/ * authz_check_access_cb ; 

__attribute__((used)) static svn_repos_authz_func_t FUNC0(server_baton_t *baton)
{
  if (baton->repository->authzdb)
     return authz_check_access_cb;
  return NULL;
}