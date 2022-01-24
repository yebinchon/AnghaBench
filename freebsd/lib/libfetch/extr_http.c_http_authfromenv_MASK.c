#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * password; int /*<<< orphan*/ * user; int /*<<< orphan*/ * realm; int /*<<< orphan*/ * scheme; } ;
typedef  TYPE_1__ http_auth_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 void* FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(const char *p, http_auth_params_t *parms)
{
	int ret = -1;
	char *v, *ve;
	char *str = FUNC4(p);

	if (str == NULL) {
		FUNC1();
		return (-1);
	}
	v = str;

	if ((ve = FUNC3(v, ':')) == NULL)
		goto out;

	*ve = 0;
	if ((parms->scheme = FUNC4(v)) == NULL) {
		FUNC1();
		goto out;
	}
	v = ve + 1;

	if ((ve = FUNC3(v, ':')) == NULL)
		goto out;

	*ve = 0;
	if ((parms->realm = FUNC4(v)) == NULL) {
		FUNC1();
		goto out;
	}
	v = ve + 1;

	if ((ve = FUNC3(v, ':')) == NULL)
		goto out;

	*ve = 0;
	if ((parms->user = FUNC4(v)) == NULL) {
		FUNC1();
		goto out;
	}
	v = ve + 1;


	if ((parms->password = FUNC4(v)) == NULL) {
		FUNC1();
		goto out;
	}
	ret = 0;
out:
	if (ret == -1)
		FUNC0(parms);
	if (str)
		FUNC2(str);
	return (ret);
}