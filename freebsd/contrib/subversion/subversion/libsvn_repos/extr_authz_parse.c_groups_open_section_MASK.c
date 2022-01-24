#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {scalar_t__ parsing_groups; int /*<<< orphan*/  in_groups; } ;
typedef  TYPE_2__ ctor_baton_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_AUTHZ_INVALID_CONFIG ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__* const,TYPE_1__*) ; 
 int /*<<< orphan*/  groups_section ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton, svn_stringbuf_t *section)
{
  ctor_baton_t *const cb = baton;

  if (cb->parsing_groups)
    FUNC0(FUNC2(cb, section));

  if (0 == FUNC3(section->data, groups_section))
    {
      cb->in_groups = TRUE;
      return SVN_NO_ERROR;
    }

  return FUNC4(
      SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
      (cb->parsing_groups
       ? FUNC1("Section is not valid in the global group file: [%s]")
       : FUNC1("Section is not valid in the authz file: [%s]")),
      section->data);
}