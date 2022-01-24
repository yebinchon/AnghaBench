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
struct vector_read_cmd {int capacity; int /*<<< orphan*/ * r_container; scalar_t__ size; } ;
typedef  enum read_cmd { ____Placeholder_read_cmd } read_cmd ;

/* Variables and functions */
 int VECTOR_DEF_CAPACITY ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(struct vector_read_cmd *v)
{

	if (v == NULL)
		return (0);

	v->size = 0;
	v->capacity = VECTOR_DEF_CAPACITY;

	if ((v->r_container = FUNC0(sizeof(enum read_cmd) * v->capacity))
	    == NULL)
		return (0);

	return (1);
}