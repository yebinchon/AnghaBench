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
struct group {char* gr_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct group*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct group* FUNC2 (struct group*) ; 
 char* FUNC3 (char const*) ; 

struct group *
FUNC4(const char *line)
{
	struct group gr;
	char *line_copy;
	struct group *new_gr;

	if ((line_copy = FUNC3(line)) == NULL)
		return (NULL);
	if (!FUNC0(line_copy, &gr)) {
		FUNC1(line_copy);
		return (NULL);
	}
	new_gr = FUNC2(&gr);
	FUNC1(line_copy);
	if (gr.gr_mem != NULL)
		FUNC1(gr.gr_mem);

	return (new_gr);
}