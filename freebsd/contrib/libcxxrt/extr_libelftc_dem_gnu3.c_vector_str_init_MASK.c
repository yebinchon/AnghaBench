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
struct vector_str {int capacity; int /*<<< orphan*/ * container; scalar_t__ size; } ;

/* Variables and functions */
 int VECTOR_DEF_CAPACITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static bool
FUNC2(struct vector_str *v)
{

	if (v == NULL)
		return (false);

	v->size = 0;
	v->capacity = VECTOR_DEF_CAPACITY;

	FUNC0(v->capacity > 0);

	if ((v->container = FUNC1(sizeof(char *) * v->capacity)) == NULL)
		return (false);

	FUNC0(v->container != NULL);

	return (true);
}