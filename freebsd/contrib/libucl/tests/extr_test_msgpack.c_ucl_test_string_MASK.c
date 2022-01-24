#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ucl_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_ARRAY ; 
 int /*<<< orphan*/  UCL_OBJECT_BINARY ; 
 int /*<<< orphan*/  UCL_STRING_RAW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int nelt ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ucl_object_t*
FUNC6 (void)
{
	ucl_object_t *res, *elt;
	int count, i;
	uint32_t cur_len;
	char *str;

	res = FUNC5 (UCL_ARRAY);
	count = FUNC2 () % nelt;

	for (i = 0; i < count; i ++) {
		while ((cur_len = FUNC2 ()) % 128 == 0);

		str = FUNC1 (cur_len % 128);
		FUNC3 (res, FUNC4 (str, cur_len % 128,
				UCL_STRING_RAW));
		FUNC0 (str);

		while ((cur_len = FUNC2 ()) % 512 == 0);
		str = FUNC1 (cur_len % 512);
		FUNC3 (res, FUNC4 (str, cur_len % 512,
				UCL_STRING_RAW));
		FUNC0 (str);

		while ((cur_len = FUNC2 ()) % 128 == 0);
		str = FUNC1 (cur_len % 128);
		elt = FUNC4 (str, cur_len % 128,
				UCL_STRING_RAW);
		elt->flags |= UCL_OBJECT_BINARY;
		FUNC3 (res, elt);
		FUNC0 (str);

		while ((cur_len = FUNC2 ()) % 512 == 0);
		str = FUNC1 (cur_len % 512);
		elt = FUNC4 (str, cur_len % 512,
				UCL_STRING_RAW);
		elt->flags |= UCL_OBJECT_BINARY;
		FUNC3 (res, elt);
		FUNC0 (str);
	}

	/* One large string */
	str = FUNC1 (65537);
	elt = FUNC4 (str, 65537,
			UCL_STRING_RAW);
	elt->flags |= UCL_OBJECT_BINARY;
	FUNC3 (res, elt);
	FUNC0 (str);

	return res;
}