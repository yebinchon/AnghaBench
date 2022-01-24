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
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ucl_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_OBJECT_BINARY ; 
 int /*<<< orphan*/  UCL_STRING_RAW ; 
 char* FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ucl_object_t*
FUNC3 (void)
{
	ucl_object_t *res;
	char *str;
	uint32_t cur_len;

	while ((cur_len = FUNC1 ()) % 100000 == 0);
	str = FUNC0 (cur_len % 100000);
	res = FUNC2 (str, cur_len % 100000,
				UCL_STRING_RAW);
	res->flags |= UCL_OBJECT_BINARY;

	return res;
}