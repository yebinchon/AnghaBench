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
struct roff_meta {scalar_t__ macroset; TYPE_1__* first; } ;
struct mparse {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  child; } ;

/* Variables and functions */
 scalar_t__ MACROSET_MDOC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mparse*,int,char const*) ; 
 struct roff_meta* FUNC2 (struct mparse*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 

__attribute__((used)) static void
FUNC6(struct mparse *mp, int fd, const char *fn, int list)
{
	struct roff_meta	*meta;
	int		 line, col;

	FUNC1(mp, fd, fn);
	FUNC0(fd);
	meta = FUNC2(mp);
	line = 1;
	col = 0;

	if (meta->macroset == MACROSET_MDOC)
		FUNC4(meta->first->child, &line, &col, list);
	else
		FUNC3(meta->first->child, &line, &col, list);

	if ( ! list)
		FUNC5('\n');
}