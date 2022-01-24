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
struct evbuffer_chain {size_t off; } ;
struct evbuffer {struct evbuffer_chain* first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer const*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer const*) ; 

size_t
FUNC2(const struct evbuffer *buf)
{
	struct evbuffer_chain *chain;
	size_t result;

	FUNC0(buf);
	chain = buf->first;
	result = (chain != NULL ? chain->off : 0);
	FUNC1(buf);

	return result;
}