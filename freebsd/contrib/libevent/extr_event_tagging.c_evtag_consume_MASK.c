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
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,int) ; 
 int FUNC1 (struct evbuffer*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct evbuffer *evbuf)
{
	int len;
	if ((len = FUNC1(evbuf, NULL)) == -1)
		return (-1);
	FUNC0(evbuf, len);

	return (0);
}