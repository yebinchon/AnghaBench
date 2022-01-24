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
struct au_user_ent {int /*<<< orphan*/  au_never; int /*<<< orphan*/  au_always; int /*<<< orphan*/  au_name; } ;

/* Variables and functions */
 scalar_t__ AU_USER_NAME_MAX ; 
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  user_delim ; 

__attribute__((used)) static struct au_user_ent *
FUNC4(char *str, struct au_user_ent *u)
{
	char *username, *always, *never;
	char *last;

	username = FUNC3(str, user_delim, &last);
	always = FUNC3(NULL, user_delim, &last);
	never = FUNC3(NULL, user_delim, &last);

	if ((username == NULL) || (always == NULL) || (never == NULL))
		return (NULL);

	if (FUNC2(username) >= AU_USER_NAME_MAX)
		return (NULL);

	FUNC1(u->au_name, username, AU_USER_NAME_MAX);
	if (FUNC0(always, &(u->au_always)) == -1)
		return (NULL);

	if (FUNC0(never, &(u->au_never)) == -1)
		return (NULL);

	return (u);
}