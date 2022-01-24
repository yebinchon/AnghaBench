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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline const char *
FUNC3(const GUID *g)
{
	static char buf[36 + 1];
	char *str = NULL;
	int32_t ignored_status;

	FUNC2((const uuid_t *)g, &str, &ignored_status);
	if (str != NULL)
		FUNC1(buf, str, sizeof(buf));
	else
		FUNC1(buf, "groot-cannot-decode-guid-groot-smash",
		    sizeof(buf)); /* ^^^^^^^ 36 characters ^^^^^^^ */
	FUNC0(str);
	return buf;
}