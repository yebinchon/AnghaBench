#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int type; int len; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct TYPE_19__ {unsigned int n; } ;

/* Variables and functions */
#define  UCL_ARRAY 134 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__ const*) ; 
#define  UCL_BOOLEAN 133 
#define  UCL_FLOAT 132 
#define  UCL_INT 131 
#define  UCL_OBJECT 130 
#define  UCL_STRING 129 
#define  UCL_TIME 128 
 TYPE_1__* FUNC1 (TYPE_2__,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__ const*) ; 
 int FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 TYPE_2__* vec1 ; 
 TYPE_2__* vec2 ; 

int
FUNC9 (const ucl_object_t *o1, const ucl_object_t *o2)
{
	const ucl_object_t *it1, *it2;
	ucl_object_iter_t iter = NULL;
	int ret = 0;

	if (o1->type != o2->type) {
		return (o1->type) - (o2->type);
	}

	switch (o1->type) {
	case UCL_STRING:
		if (o1->len == o2->len && o1->len > 0) {
			ret = FUNC2 (FUNC8(o1), FUNC8(o2));
		}
		else {
			ret = o1->len - o2->len;
		}
		break;
	case UCL_FLOAT:
	case UCL_INT:
	case UCL_TIME:
		ret = FUNC7 (o1) - FUNC7 (o2);
		break;
	case UCL_BOOLEAN:
		ret = FUNC6 (o1) - FUNC6 (o2);
		break;
	case UCL_ARRAY:
		if (o1->len == o2->len && o1->len > 0) {
			FUNC0 (vec1, o1);
			FUNC0 (vec2, o2);
			unsigned i;

			/* Compare all elements in both arrays */
			for (i = 0; i < vec1->n; i ++) {
				it1 = FUNC1 (*vec1, i);
				it2 = FUNC1 (*vec2, i);

				if (it1 == NULL && it2 != NULL) {
					return -1;
				}
				else if (it2 == NULL && it1 != NULL) {
					return 1;
				}
				else if (it1 != NULL && it2 != NULL) {
					ret = FUNC9 (it1, it2);
					if (ret != 0) {
						break;
					}
				}
			}
		}
		else {
			ret = o1->len - o2->len;
		}
		break;
	case UCL_OBJECT:
		if (o1->len == o2->len && o1->len > 0) {
			while ((it1 = FUNC3 (o1, &iter, true)) != NULL) {
				it2 = FUNC5 (o2, FUNC4 (it1));
				if (it2 == NULL) {
					ret = 1;
					break;
				}
				ret = FUNC9 (it1, it2);
				if (ret != 0) {
					break;
				}
			}
		}
		else {
			ret = o1->len - o2->len;
		}
		break;
	default:
		ret = 0;
		break;
	}

	return ret;
}