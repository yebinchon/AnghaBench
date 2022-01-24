#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* ascii_cert; void* issuer_dname; void* valid_until; void* valid_from; void* fingerprint; void* hostname; } ;
typedef  TYPE_1__ svn_auth_ssl_server_cert_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 

svn_auth_ssl_server_cert_info_t *
FUNC2
  (const svn_auth_ssl_server_cert_info_t *info, apr_pool_t *pool)
{
  svn_auth_ssl_server_cert_info_t *new_info
    = FUNC0(pool, sizeof(*new_info));

  *new_info = *info;

  new_info->hostname = FUNC1(pool, new_info->hostname);
  new_info->fingerprint = FUNC1(pool, new_info->fingerprint);
  new_info->valid_from = FUNC1(pool, new_info->valid_from);
  new_info->valid_until = FUNC1(pool, new_info->valid_until);
  new_info->issuer_dname = FUNC1(pool, new_info->issuer_dname);
  new_info->ascii_cert = FUNC1(pool, new_info->ascii_cert);

  return new_info;
}