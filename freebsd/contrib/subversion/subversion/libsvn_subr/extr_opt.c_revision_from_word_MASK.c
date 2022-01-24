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
struct TYPE_3__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ svn_opt_revision_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  svn_opt_revision_base ; 
 int /*<<< orphan*/  svn_opt_revision_committed ; 
 int /*<<< orphan*/  svn_opt_revision_head ; 
 int /*<<< orphan*/  svn_opt_revision_previous ; 

__attribute__((used)) static int
FUNC1(svn_opt_revision_t *revision, const char *word)
{
  if (FUNC0(word, "head") == 0)
    {
      revision->kind = svn_opt_revision_head;
    }
  else if (FUNC0(word, "prev") == 0)
    {
      revision->kind = svn_opt_revision_previous;
    }
  else if (FUNC0(word, "base") == 0)
    {
      revision->kind = svn_opt_revision_base;
    }
  else if (FUNC0(word, "committed") == 0)
    {
      revision->kind = svn_opt_revision_committed;
    }
  else
    return -1;

  return 0;
}