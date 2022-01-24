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
struct argvec {size_t bufsize; int argc; struct argvec* buf; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct argvec*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static struct argvec *
FUNC2(size_t bufsize)
{
	struct argvec *av;

	av = FUNC1(sizeof(*av));
	if (av == NULL)
		return (NULL);
	av->bufsize = bufsize;
	av->buf = FUNC1(av->bufsize);
	if (av->buf == NULL) {
		FUNC0(av);
		return (NULL);
	}
	av->argc = 32;
	av->argv = FUNC1(sizeof(char *) * av->argc);
	if (av->argv == NULL) {
		FUNC0(av->buf);
		FUNC0(av);
		return (NULL);
	}
	return av;
}