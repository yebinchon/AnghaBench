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
 size_t FUNC0 (struct evbuffer*) ; 
 unsigned char* FUNC1 (struct evbuffer*,size_t) ; 
 int FUNC2 (unsigned char*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(struct evbuffer *buf, const char *s)
{
	size_t b_sz = FUNC0(buf);
	size_t s_sz = FUNC3(s);
	unsigned char *d;
	int r;

	if (b_sz < s_sz)
		return -1;

	d = FUNC1(buf, s_sz);
	if ((r = FUNC2(d, s, s_sz)))
		return r;

	if (b_sz > s_sz)
		return 1;
	else
		return 0;
}