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
typedef  scalar_t__ LONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,scalar_t__*) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static int
FUNC2 (char **buf, CORE_ADDR *ptrval, int *length)
{
  char *c;
  LONGEST retlong;

  if (!buf || !*buf || !**buf || !ptrval || !length)
    return -1;
  c = FUNC1 (*buf, '/');
  if (!c)
    return -1;
  *c++ = '\0';
  if (FUNC0 (buf, &retlong))
    return -1;
  *ptrval = (CORE_ADDR) retlong;
  *buf = c;
  if (FUNC0 (buf, &retlong))
    return -1;
  *length = (int) retlong;
  return 0;
}