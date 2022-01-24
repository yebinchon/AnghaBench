#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* set; } ;
typedef  TYPE_1__ escape_t ;
typedef  int /*<<< orphan*/  _HZEncodingInfo ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  escape_hints ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(void *context, const char *name, const char *s)
{
	_HZEncodingInfo *ei;
	escape_t *escape;
	void *p[2];

	ei = (_HZEncodingInfo *)context;
	escape = FUNC4(1, sizeof(*escape));
	if (escape == NULL)
		return (EINVAL);
	if (FUNC6("0", name) == 0) {
		escape->set = FUNC0(ei);
		FUNC2(FUNC0(ei), escape, entry);
	} else if (FUNC6("1", name) == 0) {
		escape->set = FUNC1(ei);
		FUNC2(FUNC1(ei), escape, entry);
	} else {
		FUNC5(escape);
		return (EINVAL);
	}
	p[0] = (void *)escape;
	p[1] = (void *)ei;
	return (FUNC3(
	    escape_hints, (void *)&p[0], s, FUNC7(s)));
}