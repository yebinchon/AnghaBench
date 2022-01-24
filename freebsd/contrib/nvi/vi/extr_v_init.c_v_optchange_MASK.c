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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
#define  O_MATCHCHARS 131 
#define  O_PARAGRAPHS 130 
#define  O_SECTIONS 129 
 char* FUNC0 (int /*<<< orphan*/ *,int const) ; 
#define  O_WINDOW 128 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(SCR *sp, int offset, char *str, u_long *valp)
{
	switch (offset) {
	case O_MATCHCHARS:
		return (FUNC1(sp, str));
	case O_PARAGRAPHS:
		return (FUNC2(sp, str, FUNC0(sp, O_SECTIONS)));
	case O_SECTIONS:
		return (FUNC2(sp, FUNC0(sp, O_PARAGRAPHS), str));
	case O_WINDOW:
		return (FUNC3(sp, *valp));
	}
	return (0);
}