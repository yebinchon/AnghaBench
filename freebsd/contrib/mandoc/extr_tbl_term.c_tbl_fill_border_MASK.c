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
struct termp {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int* borders_locale ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct termp*,char*,size_t) ; 

__attribute__((used)) static void
FUNC3(struct termp *tp, int c, size_t len)
{
	char	 buf[12];

	if ((c = borders_locale[c]) > 127) {
		(void)FUNC0(buf, sizeof(buf), "\\[u%04x]", c);
		FUNC2(tp, buf, len);
	} else
		FUNC1(tp, c, len);
}