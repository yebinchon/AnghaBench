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
struct temp_file_cleanup_s {int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct temp_file_cleanup_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  temp_file_plain_cleanup_handler ; 

__attribute__((used)) static apr_status_t
FUNC1(void *baton)
{
  struct  temp_file_cleanup_s *b = baton;

  FUNC0(b->pool, b,
                        temp_file_plain_cleanup_handler);

  return APR_SUCCESS;
}