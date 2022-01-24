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
 char* FUNC0 (char*,int) ; 

__attribute__((used)) static char *
FUNC1 (char *buf, int value)
{
  buf = FUNC0 (buf, (value >> 24) & 0xff);
  buf = FUNC0 (buf, (value >> 16) & 0xff);
  buf = FUNC0 (buf, (value >> 8) & 0x0ff);
  buf = FUNC0 (buf, (value & 0xff));
  return buf;
}