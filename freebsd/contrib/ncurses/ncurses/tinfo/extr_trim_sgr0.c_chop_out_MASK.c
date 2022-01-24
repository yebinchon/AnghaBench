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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRACE_DATABASE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static unsigned
FUNC2(char *string, unsigned i, unsigned j)
{
    FUNC0(TRACE_DATABASE, ("chop_out %d..%d from %s", i, j, FUNC1(string)));
    while (string[j] != '\0') {
	string[i++] = string[j++];
    }
    string[i] = '\0';
    return i;
}