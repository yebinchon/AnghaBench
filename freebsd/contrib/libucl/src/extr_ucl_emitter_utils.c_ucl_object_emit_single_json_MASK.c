#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* sv; int /*<<< orphan*/  iv; int /*<<< orphan*/  dv; } ;
struct TYPE_5__ {int type; int len; TYPE_1__ value; } ;
typedef  TYPE_2__ ucl_object_t ;
typedef  int /*<<< orphan*/  UT_string ;

/* Variables and functions */
#define  UCL_ARRAY 136 
#define  UCL_BOOLEAN 135 
#define  UCL_FLOAT 134 
#define  UCL_INT 133 
#define  UCL_NULL 132 
#define  UCL_OBJECT 131 
#define  UCL_STRING 130 
#define  UCL_TIME 129 
#define  UCL_USERDATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

unsigned char *
FUNC6 (const ucl_object_t *obj)
{
	UT_string *buf = NULL;
	unsigned char *res = NULL;

	if (obj == NULL) {
		return NULL;
	}

	FUNC5 (buf);

	if (buf != NULL) {
		switch (obj->type) {
		case UCL_OBJECT:
			FUNC3 ("object", 6, buf);
			break;
		case UCL_ARRAY:
			FUNC3 ("array", 5, buf);
			break;
		case UCL_INT:
			FUNC2 (obj->value.iv, buf);
			break;
		case UCL_FLOAT:
		case UCL_TIME:
			FUNC1 (obj->value.dv, buf);
			break;
		case UCL_NULL:
			FUNC3 ("null", 4, buf);
			break;
		case UCL_BOOLEAN:
			if (obj->value.iv) {
				FUNC3 ("true", 4, buf);
			}
			else {
				FUNC3 ("false", 5, buf);
			}
			break;
		case UCL_STRING:
			FUNC3 (obj->value.sv, obj->len, buf);
			break;
		case UCL_USERDATA:
			FUNC3 ("userdata", 8, buf);
			break;
		}
		res = FUNC4 (buf);
		FUNC0 (buf);
	}

	return res;
}