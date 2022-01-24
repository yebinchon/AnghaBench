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

/* Variables and functions */
 struct type** undef_types ; 
 int undef_types_allocated ; 
 int undef_types_length ; 
 scalar_t__ FUNC0 (char*,int) ; 

__attribute__((used)) static void
FUNC1 (struct type *type)
{
  if (undef_types_length == undef_types_allocated)
    {
      undef_types_allocated *= 2;
      undef_types = (struct type **)
	FUNC0 ((char *) undef_types,
		  undef_types_allocated * sizeof (struct type *));
    }
  undef_types[undef_types_length++] = type;
}