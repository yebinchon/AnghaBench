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
typedef  int /*<<< orphan*/  svn_auth_cred_ssl_client_cert_pw_t ;
struct TYPE_4__ {int /*<<< orphan*/  prompt_baton; int /*<<< orphan*/  (* prompt_func ) (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ ssl_client_cert_pw_prompt_provider_baton_t ;
struct TYPE_5__ {scalar_t__ retries; int /*<<< orphan*/  realmstring; TYPE_1__* pb; } ;
typedef  TYPE_2__ ssl_client_cert_pw_prompt_iter_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_AUTH_PARAM_NO_AUTH_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void **credentials_p,
                                     void **iter_baton,
                                     void *provider_baton,
                                     apr_hash_t *parameters,
                                     const char *realmstring,
                                     apr_pool_t *pool)
{
  ssl_client_cert_pw_prompt_provider_baton_t *pb = provider_baton;
  ssl_client_cert_pw_prompt_iter_baton_t *ib =
    FUNC1(pool, sizeof(*ib));
  const char *no_auth_cache = FUNC4(parameters,
                                            SVN_AUTH_PARAM_NO_AUTH_CACHE);

  FUNC0(pb->prompt_func((svn_auth_cred_ssl_client_cert_pw_t **)
                          credentials_p, pb->prompt_baton, realmstring,
                          ! no_auth_cache, pool));

  ib->pb = pb;
  ib->realmstring = FUNC2(pool, realmstring);
  ib->retries = 0;
  *iter_baton = ib;

  return SVN_NO_ERROR;
}