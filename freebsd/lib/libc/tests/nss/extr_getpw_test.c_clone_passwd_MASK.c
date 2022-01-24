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
struct passwd {int /*<<< orphan*/ * pw_shell; int /*<<< orphan*/ * pw_dir; int /*<<< orphan*/ * pw_gecos; int /*<<< orphan*/ * pw_class; int /*<<< orphan*/ * pw_passwd; int /*<<< orphan*/ * pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct passwd*,struct passwd const*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct passwd *dest, struct passwd const *src)
{
	FUNC0(dest != NULL);
	FUNC0(src != NULL);

	FUNC1(dest, src, sizeof(struct passwd));
	if (src->pw_name != NULL)
		dest->pw_name = FUNC2(src->pw_name);
	if (src->pw_passwd != NULL)
		dest->pw_passwd = FUNC2(src->pw_passwd);
	if (src->pw_class != NULL)
		dest->pw_class = FUNC2(src->pw_class);
	if (src->pw_gecos != NULL)
		dest->pw_gecos = FUNC2(src->pw_gecos);
	if (src->pw_dir != NULL)
		dest->pw_dir = FUNC2(src->pw_dir);
	if (src->pw_shell != NULL)
		dest->pw_shell = FUNC2(dest->pw_shell);
}