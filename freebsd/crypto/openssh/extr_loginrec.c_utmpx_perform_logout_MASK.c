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
struct utmpx {int /*<<< orphan*/  ut_type; int /*<<< orphan*/  ut_id; } ;
struct logininfo {int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEAD_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (struct logininfo*,struct utmpx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct logininfo*,struct utmpx*) ; 
 int /*<<< orphan*/  FUNC3 (struct logininfo*,struct utmpx*) ; 

__attribute__((used)) static int
FUNC4(struct logininfo *li)
{
	struct utmpx utx;

	FUNC0(li, &utx);
# ifdef HAVE_ID_IN_UTMPX
	line_abbrevname(utx.ut_id, li->line, sizeof(utx.ut_id));
# endif
# ifdef HAVE_TYPE_IN_UTMPX
	utx.ut_type = DEAD_PROCESS;
# endif

# ifdef UTMPX_USE_LIBRARY
	utmpx_write_library(li, &utx);
# else
	FUNC2(li, &utx);
# endif
	return (1);
}