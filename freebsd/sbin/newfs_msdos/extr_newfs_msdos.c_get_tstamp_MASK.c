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
typedef  int /*<<< orphan*/  time_t ;
struct stat {int /*<<< orphan*/  st_mtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC1 (char const*,struct stat*) ; 
 long long FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static time_t
FUNC3(const char *b)
{
    struct stat st;
    char *eb;
    long long l;

    if (FUNC1(b, &st) != -1)
        return (time_t)st.st_mtime;

    errno = 0;
    l = FUNC2(b, &eb, 0);
    if (b == eb || *eb || errno)
        FUNC0(EXIT_FAILURE, "Can't parse timestamp '%s'", b);
    return (time_t)l;
}