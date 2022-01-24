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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char*,size_t) ; 

char *
FUNC4(const char *s)
{
    static char *buf = NULL;
    static size_t buf_size = 0;
    size_t size;

    if (s == NULL)
      return NULL;
    size = FUNC2(s) + 1;
    if (buf_size < size) {
	buf = FUNC3(buf, size);
	buf_size = size;
    }
    FUNC0(buf, s, size);
    FUNC1(buf);
    return buf;
}