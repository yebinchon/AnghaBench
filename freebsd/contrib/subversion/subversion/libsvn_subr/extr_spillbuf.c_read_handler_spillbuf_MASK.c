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
struct spillbuf_baton {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  reader; } ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton, char *buffer, apr_size_t *len)
{
  struct spillbuf_baton *sb = baton;

  FUNC0(FUNC2(len, sb->reader, buffer, *len,
                                    sb->scratch_pool));

  FUNC1(sb->scratch_pool);
  return SVN_NO_ERROR;
}