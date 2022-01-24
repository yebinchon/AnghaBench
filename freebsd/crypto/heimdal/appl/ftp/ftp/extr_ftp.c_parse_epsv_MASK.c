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
 int FUNC0 (int) ; 
 int FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (const char *str)
{
    char sep;
    char *end;
    int port;

    if (*str == '\0')
	return -1;
    sep = *str++;
    if (sep != *str++)
	return -1;
    if (sep != *str++)
	return -1;
    port = FUNC1 (str, &end, 0);
    if (str == end)
	return -1;
    if (end[0] != sep || end[1] != '\0')
	return -1;
    return FUNC0(port);
}