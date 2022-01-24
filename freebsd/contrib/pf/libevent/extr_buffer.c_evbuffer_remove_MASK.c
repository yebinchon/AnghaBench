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
struct evbuffer {size_t off; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 

int
FUNC2(struct evbuffer *buf, void *data, size_t datlen)
{
	size_t nread = datlen;
	if (nread >= buf->off)
		nread = buf->off;

	FUNC1(data, buf->buffer, nread);
	FUNC0(buf, nread);
	
	return (nread);
}