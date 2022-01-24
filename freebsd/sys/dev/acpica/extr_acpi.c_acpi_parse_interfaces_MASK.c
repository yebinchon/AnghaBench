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
struct acpi_interface {char** data; int num; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char) ; 
 char** FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(char *str, struct acpi_interface *iface)
{
	char *p;
	size_t len;
	int i, j;

	p = str;
	while (FUNC1(*p) || *p == ',')
		p++;
	len = FUNC4(p);
	if (len == 0)
		return (0);
	p = FUNC3(p, M_TEMP);
	for (i = 0; i < len; i++)
		if (p[i] == ',')
			p[i] = '\0';
	i = j = 0;
	while (i < len)
		if (FUNC1(p[i]) || p[i] == '\0')
			i++;
		else {
			i += FUNC4(p + i) + 1;
			j++;
		}
	if (j == 0) {
		FUNC0(p, M_TEMP);
		return (0);
	}
	iface->data = FUNC2(sizeof(*iface->data) * j, M_TEMP, M_WAITOK);
	iface->num = j;
	i = j = 0;
	while (i < len)
		if (FUNC1(p[i]) || p[i] == '\0')
			i++;
		else {
			iface->data[j] = p + i;
			i += FUNC4(p + i) + 1;
			j++;
		}

	return (j);
}