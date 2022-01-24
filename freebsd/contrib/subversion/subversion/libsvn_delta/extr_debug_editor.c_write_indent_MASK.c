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
struct edit_baton {char* prefix; int indent_level; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC2(struct edit_baton *eb, apr_pool_t *pool)
{
  int i;

  FUNC0(FUNC1(eb->out, eb->prefix));
  for (i = 0; i < eb->indent_level; ++i)
    FUNC0(FUNC1(eb->out, " "));

  return SVN_NO_ERROR;
}