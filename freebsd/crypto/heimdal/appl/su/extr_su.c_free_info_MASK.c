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
struct passwd {struct passwd* pw_shell; struct passwd* pw_dir; struct passwd* pw_passwd; struct passwd* pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct passwd*) ; 

__attribute__((used)) static void
FUNC1(struct passwd *p)
{
    FUNC0 (p->pw_name);
    FUNC0 (p->pw_passwd);
    FUNC0 (p->pw_dir);
    FUNC0 (p->pw_shell);
    FUNC0 (p);
}