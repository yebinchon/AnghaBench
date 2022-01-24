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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf const*) ; 
 size_t FUNC2 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC3(FILE *f, const char *field,
			     const struct wpabuf *val)
{
	size_t i;
	const u8 *pos;

	if (val == NULL)
		return;

	FUNC0(f, "%s=", field);
	pos = FUNC1(val);
	for (i = 0; i < FUNC2(val); i++)
		FUNC0(f, "%02X", *pos++);
	FUNC0(f, "\n");
}