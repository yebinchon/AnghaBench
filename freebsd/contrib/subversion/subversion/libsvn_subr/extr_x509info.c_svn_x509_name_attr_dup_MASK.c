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
struct TYPE_5__ {int /*<<< orphan*/  utf8_value; int /*<<< orphan*/  oid_len; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ svn_x509_name_attr_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_x509_name_attr_t *
FUNC3(const svn_x509_name_attr_t *attr,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_x509_name_attr_t *result = FUNC0(result_pool, sizeof(*result));
  result->oid_len = attr->oid_len;
  result->oid = FUNC1(result_pool, attr->oid, attr->oid_len);
  result->utf8_value = FUNC2(result_pool, attr->utf8_value);

  return result;
}