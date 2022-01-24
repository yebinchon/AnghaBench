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
struct vector_str {size_t capacity; size_t size; char** container; } ;

/* Variables and functions */
 size_t BUFFER_GROWFACTOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (int) ; 

__attribute__((used)) static bool
FUNC3(struct vector_str *v)
{
	size_t i, tmp_cap;
	char **tmp_ctn;

	if (v == NULL)
		return (false);

	FUNC0(v->capacity > 0);

	tmp_cap = v->capacity * BUFFER_GROWFACTOR;

	FUNC0(tmp_cap > v->capacity);

	if ((tmp_ctn = FUNC2(sizeof(char *) * tmp_cap)) == NULL)
		return (false);

	for (i = 0; i < v->size; ++i)
		tmp_ctn[i] = v->container[i];

	FUNC1(v->container);

	v->container = tmp_ctn;
	v->capacity = tmp_cap;

	return (true);
}