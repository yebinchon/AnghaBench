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
struct TYPE_4__ {int* b; } ;
typedef  TYPE_1__ bdaddr_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 

int
FUNC5(char const *str, bdaddr_t *ba)
{
	int	 i, b;
	char	*end = NULL;

	FUNC2(ba, 0, sizeof(*ba));

	for (i = 5, end = FUNC3(str, ':');
	     i > 0 && *str != '\0' && end != NULL;
	     i --, str = end + 1, end = FUNC3(str, ':')) {
		switch (end - str) {
		case 1:
			b = FUNC1(str[0]);
			break;

		case 2:
			b = FUNC0(str);
			break;

		default:
			b = -1;
			break;
		}
		
		if (b < 0)
			return (0);

		ba->b[i] = b;
	}

	if (i != 0 || end != NULL || *str == 0)
		return (0);

	switch (FUNC4(str)) {
	case 1:
		b = FUNC1(str[0]);
		break;

	case 2:
		b = FUNC0(str);
		break;

	default:
		b = -1;
		break;
	}

	if (b < 0)
		return (0);

	ba->b[i] = b;

	return (1);
}