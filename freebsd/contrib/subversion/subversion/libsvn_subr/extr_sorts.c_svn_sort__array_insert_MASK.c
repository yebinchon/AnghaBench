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
struct TYPE_4__ {int nelts; int elt_size; scalar_t__ elts; } ;
typedef  TYPE_1__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

void
FUNC4(apr_array_header_t *array,
                       const void *new_element,
                       int insert_index)
{
  int elements_to_move;
  char *new_position;

  FUNC1(0 <= insert_index && insert_index <= array->nelts);
  elements_to_move = array->nelts - insert_index;  /* before bumping nelts */

  /* Grow the array, allocating a new space at the end. Note: this can
     reallocate the array's "elts" at a different address. */
  FUNC0(array);

  /* Move the elements after INSERT_INDEX along. (When elements_to_move == 0,
     this is a no-op.) */
  new_position = (char *)array->elts + insert_index * array->elt_size;
  FUNC3(new_position + array->elt_size, new_position,
          array->elt_size * elements_to_move);

  /* Copy in the new element */
  FUNC2(new_position, new_element, array->elt_size);
}