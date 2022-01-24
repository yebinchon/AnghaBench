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
struct TYPE_3__ {size_t sl_cur; char** sl_str; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  ttyout ; 
 size_t ttywidth ; 

void
FUNC3(StringList *sl)
{
	size_t i, j;
	size_t columns, lines;
	char *p;
	size_t w, width;

	width = 0;

	for (i = 0 ; i < sl->sl_cur ; i++) {
		w = FUNC2(sl->sl_str[i]);
		if (w > width)
			width = w;
	}
	width = (width + 8) &~ 7;

	columns = ttywidth / width;
	if (columns == 0)
		columns = 1;
	lines = (sl->sl_cur + columns - 1) / columns;
	for (i = 0; i < lines; i++) {
		for (j = 0; j < columns; j++) {
			p = sl->sl_str[j * lines + i];
			if (p)
				FUNC0(p, ttyout);
			if (j * lines + i + lines >= sl->sl_cur) {
				FUNC1('\n', ttyout);
				break;
			}
			if (p) {
				w = FUNC2(p);
				while (w < width) {
					w = (w + 8) &~ 7;
					(void)FUNC1('\t', ttyout);
				}
			}
		}
	}
}