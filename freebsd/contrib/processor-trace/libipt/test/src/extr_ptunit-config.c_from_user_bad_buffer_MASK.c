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
struct ptunit_result {int dummy; } ;
struct pt_config {int /*<<< orphan*/ * end; int /*<<< orphan*/ * begin; } ;

/* Variables and functions */
 int /*<<< orphan*/ * buffer ; 
 int FUNC0 (struct pt_config*,struct pt_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_config*) ; 
 int /*<<< orphan*/  pte_bad_config ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_config config, user;
	int errcode;

	FUNC1(&user);

	errcode = FUNC0(&config, &user);
	FUNC2(errcode, -pte_bad_config);

	user.begin = buffer;

	errcode = FUNC0(&config, &user);
	FUNC2(errcode, -pte_bad_config);

	user.begin = NULL;
	user.end = buffer;

	errcode = FUNC0(&config, &user);
	FUNC2(errcode, -pte_bad_config);

	user.begin = &buffer[1];
	user.end = buffer;

	errcode = FUNC0(&config, &user);
	FUNC2(errcode, -pte_bad_config);

	return FUNC3();
}