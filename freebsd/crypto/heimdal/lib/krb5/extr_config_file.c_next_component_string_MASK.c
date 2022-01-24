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
 char* FUNC0 (char*,char) ; 
 size_t FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(char * begin, const char * delims, char **state)
{
    char * end;

    if (begin == NULL)
        begin = *state;

    if (*begin == '\0')
        return NULL;

    end = begin;
    while (*end == '"') {
        char * t = FUNC0(end + 1, '"');

        if (t)
            end = ++t;
        else
            end += FUNC2(end);
    }

    if (*end != '\0') {
        size_t pos;

        pos = FUNC1(end, delims);
        end = end + pos;
    }

    if (*end != '\0') {
        *end = '\0';
        *state = end + 1;
        if (*begin == '"' && *(end - 1) == '"' && begin + 1 < end) {
            begin++; *(end - 1) = '\0';
        }
        return begin;
    }

    *state = end;
    if (*begin == '"' && *(end - 1) == '"' && begin + 1 < end) {
        begin++; *(end - 1) = '\0';
    }
    return begin;
}