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
struct Strbuf {int /*<<< orphan*/  s; } ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  QUOTE ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct Strbuf*) ; 
 scalar_t__ FUNC2 (struct Strbuf*,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

Char *
FUNC4(const Char *old)
{
    struct Strbuf buf = Strbuf_INIT;

    while (*old) {
	if (*old != '$')
	    FUNC0(&buf, *old++);
	else {
	    if (FUNC2(&buf, &old, QUOTE) == 0) {
		FUNC3(buf.s);
		return NULL;
	    }
	}
    }
    return FUNC1(&buf);
}