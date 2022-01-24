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
struct evbuffer {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct evbuffer* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct evbuffer*) ; 
 int FUNC4 (struct evbuffer*,char*,int) ; 

__attribute__((used)) static int
FUNC5(BIO *b, char *out, int outlen)
{
	int r = 0;
	struct evbuffer *input;

	FUNC0(b);

	if (!out)
		return 0;
	if (!b->ptr)
		return -1;

	input = FUNC2(b->ptr);
	if (FUNC3(input) == 0) {
		/* If there's no data to read, say so. */
		FUNC1(b);
		return -1;
	} else {
		r = FUNC4(input, out, outlen);
	}

	return r;
}