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
typedef  int /*<<< orphan*/  ypclnt_t ;
struct passwd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct passwd const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct passwd const*,char const*) ; 

int
FUNC3(ypclnt_t *ypclnt, const struct passwd *pwd, const char *passwd)
{
	switch (FUNC0(ypclnt)) {
	case 0:
		return (FUNC2(ypclnt, pwd, passwd));
	case 1:
		return (FUNC1(ypclnt, pwd));
	default:
		return (-1);
	}
}