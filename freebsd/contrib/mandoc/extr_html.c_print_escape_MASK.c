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
struct html {int dummy; } ;

/* Variables and functions */
#define  ASCII_BREAK 130 
#define  ASCII_HYPH 129 
#define  ASCII_NBRSP 128 
 int /*<<< orphan*/  FUNC0 (struct html*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct html*,char*) ; 

__attribute__((used)) static int
FUNC2(struct html *h, char c)
{

	switch (c) {
	case '<':
		FUNC1(h, "&lt;");
		break;
	case '>':
		FUNC1(h, "&gt;");
		break;
	case '&':
		FUNC1(h, "&amp;");
		break;
	case '"':
		FUNC1(h, "&quot;");
		break;
	case ASCII_NBRSP:
		FUNC1(h, "&nbsp;");
		break;
	case ASCII_HYPH:
		FUNC0(h, '-');
		break;
	case ASCII_BREAK:
		break;
	default:
		return 0;
	}
	return 1;
}