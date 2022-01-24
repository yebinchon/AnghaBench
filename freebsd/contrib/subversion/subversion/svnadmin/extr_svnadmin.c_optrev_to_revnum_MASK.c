#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_4__ {int /*<<< orphan*/  number; } ;
struct TYPE_5__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_opt_revision_number ; 
 scalar_t__ svn_opt_revision_unspecified ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_revnum_t *revnum, const svn_opt_revision_t *opt_rev)
{
  if (opt_rev->kind == svn_opt_revision_number)
    {
      *revnum = opt_rev->value.number;
      if (! FUNC0(*revnum))
        return FUNC3(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                                 FUNC1("Invalid revision number (%ld) specified"),
                                 *revnum);
    }
  else if (opt_rev->kind == svn_opt_revision_unspecified)
    {
      *revnum = SVN_INVALID_REVNUM;
    }
  else
    {
      return FUNC2(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                              FUNC1("Non-numeric revision specified"));
    }
  return SVN_NO_ERROR;
}