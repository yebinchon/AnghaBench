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
struct evkeyvalq {int dummy; } ;
struct evkeyval {char* value; } ;

/* Variables and functions */
 struct evkeyval* FUNC0 (struct evkeyvalq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evkeyvalq ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct evkeyvalq *headers, char *line)
{
	struct evkeyval *header = FUNC0(headers, evkeyvalq);
	char *newval;
	size_t old_len, line_len;

	if (header == NULL)
		return (-1);

	old_len = FUNC4(header->value);

	/* Strip space from start and end of line. */
	while (*line == ' ' || *line == '\t')
		++line;
	FUNC1(line);

	line_len = FUNC4(line);

	newval = FUNC3(header->value, old_len + line_len + 2);
	if (newval == NULL)
		return (-1);

	newval[old_len] = ' ';
	FUNC2(newval + old_len + 1, line, line_len + 1);
	header->value = newval;

	return (0);
}