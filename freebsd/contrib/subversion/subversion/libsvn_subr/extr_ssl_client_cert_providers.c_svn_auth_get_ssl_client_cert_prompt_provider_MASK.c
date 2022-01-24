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
typedef  int /*<<< orphan*/  svn_auth_ssl_client_cert_prompt_func_t ;
struct TYPE_6__ {TYPE_2__* provider_baton; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ svn_auth_provider_object_t ;
struct TYPE_7__ {int retry_limit; void* prompt_baton; int /*<<< orphan*/  prompt_func; } ;
typedef  TYPE_2__ ssl_client_cert_prompt_provider_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ssl_client_cert_prompt_provider ; 

void FUNC2
  (svn_auth_provider_object_t **provider,
   svn_auth_ssl_client_cert_prompt_func_t prompt_func,
   void *prompt_baton,
   int retry_limit,
   apr_pool_t *pool)
{
  svn_auth_provider_object_t *po = FUNC1(pool, sizeof(*po));
  ssl_client_cert_prompt_provider_baton_t *pb = FUNC0(pool, sizeof(*pb));

  pb->prompt_func = prompt_func;
  pb->prompt_baton = prompt_baton;
  pb->retry_limit = retry_limit;

  po->vtable = &ssl_client_cert_prompt_provider;
  po->provider_baton = pb;
  *provider = po;
}