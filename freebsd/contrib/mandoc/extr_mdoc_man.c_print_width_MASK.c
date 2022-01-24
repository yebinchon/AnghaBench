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
struct roff_node {scalar_t__ type; char* string; } ;
struct mdoc_bl {char* width; scalar_t__ type; int count; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int* Bl_stack ; 
 int /*<<< orphan*/  Bl_stack_len ; 
 scalar_t__ LIST_enum ; 
 scalar_t__ LIST_hang ; 
 scalar_t__ LIST_tag ; 
 scalar_t__ ROFFT_TEXT ; 
 scalar_t__ SCALE_EN ; 
 int /*<<< orphan*/  SCALE_MAX ; 
 int TPremain ; 
 char* FUNC0 (char*,struct roffsu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC6(const struct mdoc_bl *bl, const struct roff_node *child)
{
	char		  buf[24];
	struct roffsu	  su;
	const char	 *end;
	int		  numeric, remain, sz, chsz;

	numeric = 1;
	remain = 0;

	/* Convert the width into a number (of characters). */
	if (bl->width == NULL)
		sz = (bl->type == LIST_hang) ? 6 : 0;
	else {
		end = FUNC0(bl->width, &su, SCALE_MAX);
		if (end == NULL || *end != '\0')
			sz = FUNC1(bl->width);
		else if (SCALE_EN == su.unit)
			sz = su.scale;
		else {
			sz = 0;
			numeric = 0;
		}
	}

	/* XXX Rough estimation, might have multiple parts. */
	if (bl->type == LIST_enum)
		chsz = (bl->count > 8) + 1;
	else if (child != NULL && child->type == ROFFT_TEXT)
		chsz = FUNC1(child->string);
	else
		chsz = 0;

	/* Maybe we are inside an enclosing list? */
	FUNC2();

	/*
	 * Save our own indentation,
	 * such that child lists can use it.
	 */
	Bl_stack[Bl_stack_len++] = sz + 2;

	/* Set up the current list. */
	if (chsz > sz && bl->type != LIST_tag)
		FUNC3(".HP", 0);
	else {
		FUNC3(".TP", 0);
		remain = sz + 2;
	}
	if (numeric) {
		(void)FUNC5(buf, sizeof(buf), "%dn", sz + 2);
		FUNC4(buf);
	} else
		FUNC4(bl->width);
	TPremain = remain;
}