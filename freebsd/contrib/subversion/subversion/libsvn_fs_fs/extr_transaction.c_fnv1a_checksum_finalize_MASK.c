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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {scalar_t__ kind; scalar_t__ digest; } ;
typedef  TYPE_1__ svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_checksum_fnv1a_32x4 ; 

__attribute__((used)) static svn_error_t *
FUNC4(apr_uint32_t *digest,
                        svn_checksum_ctx_t *context,
                        apr_pool_t *scratch_pool)
{
  svn_checksum_t *checksum;

  FUNC0(FUNC3(&checksum, context, scratch_pool));
  FUNC1(checksum->kind == svn_checksum_fnv1a_32x4);
  *digest = FUNC2(*(const apr_uint32_t *)(checksum->digest));

  return SVN_NO_ERROR;
}