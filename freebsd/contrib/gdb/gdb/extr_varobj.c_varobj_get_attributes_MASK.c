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
struct varobj {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct varobj*) ; 

int
FUNC1 (struct varobj *var)
{
  int attributes = 0;

  if (FUNC0 (var))
    /* FIXME: define masks for attributes */
    attributes |= 0x00000001;	/* Editable */

  return attributes;
}