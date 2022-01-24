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
struct TYPE_5__ {int /*<<< orphan*/  hostnames; int /*<<< orphan*/  digest; int /*<<< orphan*/  valid_to; int /*<<< orphan*/  valid_from; void* issuer; void* subject; } ;
typedef  TYPE_1__ svn_x509_certinfo_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_x509_certinfo_t *
FUNC4(const svn_x509_certinfo_t *certinfo,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_x509_certinfo_t *result = FUNC0(result_pool, sizeof(*result));
  result->subject = FUNC2(certinfo->subject, result_pool);
  result->issuer = FUNC2(certinfo->issuer, result_pool);
  result->valid_from = certinfo->valid_from;
  result->valid_to = certinfo->valid_to;
  result->digest = FUNC3(certinfo->digest, result_pool);
  result->hostnames = FUNC1(certinfo->hostnames, result_pool);

  return result;
}