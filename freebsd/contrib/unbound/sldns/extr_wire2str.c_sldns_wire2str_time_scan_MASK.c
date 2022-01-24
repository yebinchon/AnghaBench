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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  tm ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tm*) ; 
 int FUNC3 (char**,size_t*,char*,char*) ; 
 scalar_t__ FUNC4 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	/* create a YYYYMMDDHHMMSS string if possible */
	struct tm tm;
	char date_buf[16];
	uint32_t t;
	FUNC0(&tm, 0, sizeof(tm));
	if(*dl < 4) return -1;
	t = FUNC1(*d);
	date_buf[15]=0;
	if(FUNC2(t, FUNC5(NULL), &tm) &&
		FUNC4(date_buf, 15, "%Y%m%d%H%M%S", &tm)) {
		(*d) += 4;
		(*dl) -= 4;
		return FUNC3(s, sl, "%s", date_buf);
	}
	return -1;
}