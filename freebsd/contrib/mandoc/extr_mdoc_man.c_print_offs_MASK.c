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
struct roffsu {scalar_t__ unit; int scale; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__* Bl_stack ; 
 int Bl_stack_len ; 
 int /*<<< orphan*/  MMAN_Bk_susp ; 
 int /*<<< orphan*/  MMAN_nl ; 
 scalar_t__ SCALE_EN ; 
 char* FUNC0 (char const*,struct roffsu*,scalar_t__) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  outflags ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6(const char *v, int keywords)
{
	char		  buf[24];
	struct roffsu	  su;
	const char	 *end;
	int		  sz;

	FUNC2(".RS", MMAN_Bk_susp);

	/* Convert v into a number (of characters). */
	if (NULL == v || '\0' == *v || (keywords && !FUNC5(v, "left")))
		sz = 0;
	else if (keywords && !FUNC5(v, "indent"))
		sz = 6;
	else if (keywords && !FUNC5(v, "indent-two"))
		sz = 12;
	else {
		end = FUNC0(v, &su, SCALE_EN);
		if (end == NULL || *end != '\0')
			sz = FUNC1(v);
		else if (SCALE_EN == su.unit)
			sz = su.scale;
		else {
			/*
			 * XXX
			 * If we are inside an enclosing list,
			 * there is no easy way to add the two
			 * indentations because they are provided
			 * in terms of different units.
			 */
			FUNC3(v);
			outflags |= MMAN_nl;
			return;
		}
	}

	/*
	 * We are inside an enclosing list.
	 * Add the two indentations.
	 */
	if (Bl_stack_len)
		sz += Bl_stack[Bl_stack_len - 1];

	(void)FUNC4(buf, sizeof(buf), "%dn", sz);
	FUNC3(buf);
	outflags |= MMAN_nl;
}