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

/* Variables and functions */
 scalar_t__ INDENT ; 
 scalar_t__ column ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  outbuf ; 
 char const* separator ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ width ; 

__attribute__((used)) static void
FUNC3(const char *src)
{
    size_t need = FUNC2(src);
    size_t want = FUNC2(separator) + need;

    if (column > INDENT
	&& column + (int) want > width) {
	FUNC0();
    }
    FUNC1(&outbuf, src);
    FUNC1(&outbuf, separator);
    column += (int) need;
}