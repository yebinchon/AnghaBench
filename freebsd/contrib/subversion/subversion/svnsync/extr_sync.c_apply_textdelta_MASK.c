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
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  wrapped_node_baton; TYPE_3__* edit_baton; } ;
typedef  TYPE_2__ node_baton_t ;
struct TYPE_6__ {TYPE_1__* wrapped_editor; scalar_t__ got_textdeltas; int /*<<< orphan*/  quiet; } ;
typedef  TYPE_3__ edit_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_4__ {int /*<<< orphan*/ * (* apply_textdelta ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *file_baton,
                const char *base_checksum,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  node_baton_t *fb = file_baton;
  edit_baton_t *eb = fb->edit_baton;

  if (! eb->quiet)
    {
      if (! eb->got_textdeltas)
        FUNC0(FUNC4(pool, FUNC1("Transmitting file data ")));
      FUNC0(FUNC4(pool, "."));
      FUNC0(FUNC3(stdout));
    }

  eb->got_textdeltas = TRUE;
  return eb->wrapped_editor->apply_textdelta(fb->wrapped_node_baton,
                                             base_checksum, pool,
                                             handler, handler_baton);
}