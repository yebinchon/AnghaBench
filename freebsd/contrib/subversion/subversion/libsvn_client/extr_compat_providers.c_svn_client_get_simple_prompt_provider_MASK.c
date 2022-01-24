#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_auth_simple_prompt_func_t ;
typedef  int /*<<< orphan*/  svn_auth_provider_object_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 

void
FUNC1
  (svn_auth_provider_object_t **provider,
   svn_auth_simple_prompt_func_t prompt_func,
   void *prompt_baton,
   int retry_limit,
   apr_pool_t *pool)
{
  FUNC0(provider, prompt_func, prompt_baton,
                                      retry_limit, pool);
}