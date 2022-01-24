#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  username_prompt_provider_baton_t ;
struct TYPE_3__ {scalar_t__ retries; } ;
typedef  TYPE_1__ username_prompt_iter_baton_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_auth_cred_username_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_AUTH_PARAM_NO_AUTH_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void **credentials_p,
                            void **iter_baton,
                            void *provider_baton,
                            apr_hash_t *parameters,
                            const char *realmstring,
                            apr_pool_t *pool)
{
  username_prompt_provider_baton_t *pb = provider_baton;
  username_prompt_iter_baton_t *ibaton = FUNC1(pool, sizeof(*ibaton));
  const char *no_auth_cache = FUNC3(parameters,
                                            SVN_AUTH_PARAM_NO_AUTH_CACHE);

  FUNC0(FUNC2
          ((svn_auth_cred_username_t **) credentials_p, pb,
           parameters, realmstring, TRUE, ! no_auth_cache, pool));

  ibaton->retries = 0;
  *iter_baton = ibaton;

  return SVN_NO_ERROR;
}