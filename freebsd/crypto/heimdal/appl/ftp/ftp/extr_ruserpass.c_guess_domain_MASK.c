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
struct addrinfo {char* ai_canonname; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC6 (char *hostname_str, size_t sz)
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    char *dot;

    if (FUNC2 (hostname_str, sz) < 0) {
	FUNC5 (hostname_str, "", sz);
	return "";
    }
    dot = FUNC4 (hostname_str, '.');
    if (dot != NULL)
	return dot + 1;

    FUNC3 (&hints, 0, sizeof(hints));
    hints.ai_flags = AI_CANONNAME;

    error = FUNC1 (hostname_str, NULL, &hints, &ai);
    if (error)
	return hostname_str;

    for (a = ai; a != NULL; a = a->ai_next)
	if (a->ai_canonname != NULL) {
	    FUNC5 (hostname_str, ai->ai_canonname, sz);
	    break;
	}
    FUNC0 (ai);
    dot = FUNC4 (hostname_str, '.');
    if (dot != NULL)
	return dot + 1;
    else
	return hostname_str;
}