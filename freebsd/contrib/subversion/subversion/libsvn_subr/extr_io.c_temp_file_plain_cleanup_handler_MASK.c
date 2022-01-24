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
struct temp_file_cleanup_s {int /*<<< orphan*/  pool; scalar_t__ fname_apr; } ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static apr_status_t
FUNC2(void *baton)
{
  struct  temp_file_cleanup_s *b = baton;
  apr_status_t apr_err = APR_SUCCESS;

  if (b->fname_apr)
    {
      apr_err = FUNC1(b->fname_apr, b->pool);
      FUNC0(apr_err, FUNC1(b->fname_apr, b->pool));
    }

  return apr_err;
}