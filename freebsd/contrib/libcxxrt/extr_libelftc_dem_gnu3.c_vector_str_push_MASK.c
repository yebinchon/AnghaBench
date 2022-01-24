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
struct vector_str {size_t size; size_t capacity; int /*<<< orphan*/ ** container; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,char*,char const*) ; 
 int FUNC2 (struct vector_str*) ; 

__attribute__((used)) static bool
FUNC3(struct vector_str *v, const char *str, size_t len)
{

	if (v == NULL || str == NULL)
		return (false);

	if (v->size == v->capacity && FUNC2(v) == false)
		return (false);

	if ((v->container[v->size] = FUNC0(sizeof(char) * (len + 1))) == NULL)
		return (false);

	FUNC1(v->container[v->size], len + 1, "%s", str);

	++v->size;

	return (true);
}