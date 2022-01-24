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
struct TYPE_4__ {TYPE_2__* provider_baton; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ svn_auth_provider_object_t ;
typedef  int /*<<< orphan*/  svn_auth_plaintext_prompt_func_t ;
struct TYPE_5__ {int /*<<< orphan*/  plaintext_answers; void* prompt_baton; int /*<<< orphan*/  plaintext_prompt_func; } ;
typedef  TYPE_2__ simple_provider_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  simple_provider ; 

void
FUNC2
  (svn_auth_provider_object_t **provider,
   svn_auth_plaintext_prompt_func_t plaintext_prompt_func,
   void* prompt_baton,
   apr_pool_t *pool)
{
  svn_auth_provider_object_t *po = FUNC1(pool, sizeof(*po));
  simple_provider_baton_t *pb = FUNC1(pool, sizeof(*pb));

  pb->plaintext_prompt_func = plaintext_prompt_func;
  pb->prompt_baton = prompt_baton;
  pb->plaintext_answers = FUNC0(pool);

  po->vtable = &simple_provider;
  po->provider_baton = pb;
  *provider = po;
}