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
struct evbuffer {int refcnt; int /*<<< orphan*/  first; int /*<<< orphan*/ * last_with_datap; int /*<<< orphan*/  callbacks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct evbuffer* FUNC1 (int,int) ; 

struct evbuffer *
FUNC2(void)
{
	struct evbuffer *buffer;

	buffer = FUNC1(1, sizeof(struct evbuffer));
	if (buffer == NULL)
		return (NULL);

	FUNC0(&buffer->callbacks);
	buffer->refcnt = 1;
	buffer->last_with_datap = &buffer->first;

	return (buffer);
}