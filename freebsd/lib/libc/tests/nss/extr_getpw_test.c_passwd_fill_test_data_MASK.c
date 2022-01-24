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
struct passwd_test_data {int dummy; } ;
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct passwd_test_data*,struct passwd*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct passwd* FUNC2 () ; 
 int /*<<< orphan*/  passwd ; 
 scalar_t__ FUNC3 (struct passwd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct passwd_test_data *td)
{
	struct passwd *pwd;

	FUNC4(1);
	while ((pwd = FUNC2()) != NULL) {
		if (FUNC3(pwd, NULL) == 0)
			FUNC0(passwd, td, pwd);
		else
			return (-1);
	}
	FUNC1();

	return (0);
}