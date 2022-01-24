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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf const*) ; 
 size_t FUNC2 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC3(const char *title, const struct wpabuf *buf)
{
	size_t i, len;
	const u8 *pos;

	if (buf == NULL)
		return;

	FUNC0("%s=", title);

	pos = FUNC1(buf);
	len = FUNC2(buf);
	for (i = 0; i < len; i++)
		FUNC0("%02X", *pos++);

	FUNC0("\n");
}