#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_baton {int /*<<< orphan*/  wrapped_file_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* change_file_prop ) (int /*<<< orphan*/ ,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct edit_baton*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  FUNC0(FUNC3(eb, pool));
  FUNC0(FUNC2(eb->out, pool, "change_file_prop : %s -> %s\n",
                            name, value ? value->data : "<deleted>"));

  FUNC0(eb->wrapped_editor->change_file_prop(fb->wrapped_file_baton,
                                               name,
                                               value,
                                               pool));

  return SVN_NO_ERROR;
}