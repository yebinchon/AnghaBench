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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 

__attribute__((used)) static void
FUNC2(char c)
{

	switch (c) {
	case '"':
		FUNC0("&quot;");
		break;
	case '&':
		FUNC0("&amp;");
		break;
	case '>':
		FUNC0("&gt;");
		break;
	case '<':
		FUNC0("&lt;");
		break;
	default:
		FUNC1((unsigned char)c);
		break;
	}
}