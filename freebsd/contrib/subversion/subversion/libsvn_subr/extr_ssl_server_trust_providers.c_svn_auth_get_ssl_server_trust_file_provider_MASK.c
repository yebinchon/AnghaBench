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
struct TYPE_4__ {int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ svn_auth_provider_object_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ssl_server_trust_file_provider ; 

void
FUNC1
  (svn_auth_provider_object_t **provider, apr_pool_t *pool)
{
  svn_auth_provider_object_t *po = FUNC0(pool, sizeof(*po));

  po->vtable = &ssl_server_trust_file_provider;
  *provider = po;
}