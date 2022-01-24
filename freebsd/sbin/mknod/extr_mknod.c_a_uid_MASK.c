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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct passwd* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static uid_t
FUNC3(const char *s)
{
	struct passwd *pw;

	if (*s == '\0')			/* Argument was "[:.]gid". */
		FUNC0(1, "owner must be specified when the group is");
	return ((pw = FUNC1(s)) == NULL) ? FUNC2(s, "user") : pw->pw_uid;
}