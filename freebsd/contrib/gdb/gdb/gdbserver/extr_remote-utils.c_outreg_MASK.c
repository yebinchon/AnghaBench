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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static char *
FUNC3 (int regno, char *buf)
{
  if ((regno >> 12) != 0)
    *buf++ = FUNC2 ((regno >> 12) & 0xf);
  if ((regno >> 8) != 0)
    *buf++ = FUNC2 ((regno >> 8) & 0xf);
  *buf++ = FUNC2 ((regno >> 4) & 0xf);
  *buf++ = FUNC2 (regno & 0xf);
  *buf++ = ':';
  FUNC0 (regno, buf);
  buf += 2 * FUNC1 (regno);
  *buf++ = ';';

  return buf;
}