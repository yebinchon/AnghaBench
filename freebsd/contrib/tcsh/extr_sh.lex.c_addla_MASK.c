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
struct Strbuf {scalar_t__ len; scalar_t__ s; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*) ; 
 struct Strbuf labuf ; 
 scalar_t__ lap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(Char *cp)
{
    static struct Strbuf buf; /* = Strbuf_INIT; */

    buf.len = 0;
    FUNC1(&buf, labuf.s + lap, labuf.len - lap);
    labuf.len = 0;
    FUNC0(&labuf, cp);
    FUNC2(&labuf);
    FUNC1(&labuf, buf.s, buf.len);
    FUNC3(cp);
    lap = 0;
}