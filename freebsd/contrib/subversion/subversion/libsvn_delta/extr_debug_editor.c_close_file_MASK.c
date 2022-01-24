#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_baton {int /*<<< orphan*/  wrapped_file_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; int /*<<< orphan*/  out; int /*<<< orphan*/  indent_level; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* close_file ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct edit_baton*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *file_baton,
           const char *text_checksum,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  eb->indent_level--;

  FUNC0(FUNC3(eb, pool));
  FUNC0(FUNC2(eb->out, pool, "close_file : %s\n",
                            text_checksum));

  FUNC0(eb->wrapped_editor->close_file(fb->wrapped_file_baton,
                                         text_checksum, pool));

  return SVN_NO_ERROR;
}