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
struct type {int dummy; } ;
typedef  int LONGEST ;

/* Variables and functions */
 scalar_t__ BITS_BIG_ENDIAN ; 
 unsigned int TARGET_CHAR_BIT ; 
 struct type* FUNC0 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_unsigned_char ; 
 scalar_t__ FUNC1 (struct type*,int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

int
FUNC3 (struct type *type, char *valaddr, int index)
{
  LONGEST low_bound, high_bound;
  LONGEST word;
  unsigned rel_index;
  struct type *range = FUNC0 (type, 0);
  if (FUNC1 (range, &low_bound, &high_bound) < 0)
    return -2;
  if (index < low_bound || index > high_bound)
    return -1;
  rel_index = index - low_bound;
  word = FUNC2 (builtin_type_unsigned_char,
		      valaddr + (rel_index / TARGET_CHAR_BIT));
  rel_index %= TARGET_CHAR_BIT;
  if (BITS_BIG_ENDIAN)
    rel_index = TARGET_CHAR_BIT - 1 - rel_index;
  return (word >> rel_index) & 1;
}