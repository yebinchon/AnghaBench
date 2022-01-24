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
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* bdb_set_errcall ) (TYPE_2__*,void (*) (char const*,char*)) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,void (*) (char const*,char*)) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC2(svn_fs_t *fs,
                            void (*handler)(const char *errpfx, char *msg))
{
  return FUNC1(fs->vtable->bdb_set_errcall(fs, handler));
}