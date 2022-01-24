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
struct vector_type_qualifier {int capacity; int /*<<< orphan*/ * q_container; int /*<<< orphan*/  ext_name; scalar_t__ size; } ;
typedef  enum type_qualifier { ____Placeholder_type_qualifier } type_qualifier ;

/* Variables and functions */
 int VECTOR_DEF_CAPACITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct vector_type_qualifier *v)
{

	if (v == NULL)
		return (0);

	v->size = 0;
	v->capacity = VECTOR_DEF_CAPACITY;

	if ((v->q_container = FUNC2(sizeof(enum type_qualifier) * v->capacity))
	    == NULL)
		return (0);

	FUNC0(v->q_container != NULL);

	if (FUNC3(&v->ext_name) == false) {
		FUNC1(v->q_container);
		return (0);
	}

	return (1);
}