#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sec; } ;
struct sta_info {TYPE_1__ connected_time; } ;
struct os_reltime {scalar_t__ sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct os_reltime*) ; 
 int FUNC1 (char*,size_t,char*,unsigned int) ; 
 scalar_t__ FUNC2 (size_t,int) ; 

__attribute__((used)) static int FUNC3(struct sta_info *sta,
				     char *buf, size_t buflen)
{
	struct os_reltime age;
	int ret;

	if (!sta->connected_time.sec)
		return 0;

	FUNC0(&sta->connected_time, &age);

	ret = FUNC1(buf, buflen, "connected_time=%u\n",
			  (unsigned int) age.sec);
	if (FUNC2(buflen, ret))
		return 0;
	return ret;
}