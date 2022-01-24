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

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,scalar_t__) ; 

int
FUNC2 (char *string_to_compare, char *template_string)
{
  int match;
  if (template_string != (char *) NULL && string_to_compare != (char *) NULL
      && FUNC0 (string_to_compare) <= FUNC0 (template_string))
    match =
      (FUNC1
       (template_string, string_to_compare, FUNC0 (string_to_compare)) == 0);
  else
    match = 0;
  return match;
}