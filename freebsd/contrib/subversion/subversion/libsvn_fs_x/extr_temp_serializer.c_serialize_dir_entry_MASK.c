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
typedef  int /*<<< orphan*/  svn_temp_serializer__context_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ svn_fs_x__dirent_t ;
typedef  scalar_t__ apr_uint32_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const* const*,int) ; 

__attribute__((used)) static void
FUNC5(svn_temp_serializer__context_t *context,
                    svn_fs_x__dirent_t **entry_p,
                    apr_uint32_t *length)
{
  svn_fs_x__dirent_t *entry = *entry_p;
  apr_size_t initial_length = FUNC2(context);

  FUNC4(context,
                            (const void * const *)entry_p,
                            sizeof(**entry_p));

  FUNC1(context, &entry->name);

  *length = (apr_uint32_t)(  FUNC2(context)
                           - FUNC0(initial_length));

  FUNC3(context);
}