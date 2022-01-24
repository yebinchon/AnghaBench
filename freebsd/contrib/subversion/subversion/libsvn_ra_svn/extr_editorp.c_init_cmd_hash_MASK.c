#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_4__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {int /*<<< orphan*/  handler; TYPE_1__ cmd; } ;
struct TYPE_5__ {int /*<<< orphan*/  handler; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_3__* cmd_hash ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_2__* ra_svn_edit_cmds ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton,
              apr_pool_t *pool)
{
  int i;
  for (i = 0; ra_svn_edit_cmds[i].cmd; i++)
    {
      apr_size_t len = FUNC2(ra_svn_edit_cmds[i].cmd);
      apr_size_t value = FUNC1(ra_svn_edit_cmds[i].cmd, len);
      FUNC0(cmd_hash[value].cmd.data == NULL);

      cmd_hash[value].cmd.data = ra_svn_edit_cmds[i].cmd;
      cmd_hash[value].cmd.len = len;
      cmd_hash[value].handler = ra_svn_edit_cmds[i].handler;
    }

  return SVN_NO_ERROR;
}