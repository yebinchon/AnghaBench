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
typedef  int /*<<< orphan*/  svn_error_t ;
struct symlink_baton_t {scalar_t__ at_eof; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 

__attribute__((used)) static svn_error_t *
FUNC0(void *baton, apr_off_t *offset, apr_pool_t *scratch_pool)
{
  struct symlink_baton_t *sb = baton;

  *offset = sb->at_eof ? 1 : 0;
  return SVN_NO_ERROR;
}