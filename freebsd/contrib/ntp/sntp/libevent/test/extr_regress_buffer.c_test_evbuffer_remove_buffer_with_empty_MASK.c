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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 struct evbuffer* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*) ; 
 int /*<<< orphan*/  no_cleanup ; 

__attribute__((used)) static void
FUNC6(void *ptr)
{
    struct evbuffer *src = FUNC3();
    struct evbuffer *dst = FUNC3();
    char buf[2];

    FUNC5(src);
    FUNC5(dst);

    /* setup the buffers */
    /* we need more data in src than we will move later */
    FUNC1(src, buf, sizeof(buf), no_cleanup, NULL);
    FUNC1(src, buf, sizeof(buf), no_cleanup, NULL);
    /* we need one buffer in dst and one empty buffer at the end */
    FUNC0(dst, buf, sizeof(buf));
    FUNC1(dst, buf, 0, no_cleanup, NULL);

    FUNC5(src);
    FUNC5(dst);

    /* move three bytes over */
    FUNC4(src, dst, 3);

    FUNC5(src);
    FUNC5(dst);

end:
    FUNC2(src);
    FUNC2(dst);
}