#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* registers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  current_inferior ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int register_bytes ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

void
FUNC4 (char *buf)
{
  int len = FUNC2 (buf);
  char *registers = FUNC1 (current_inferior, 1)->registers;

  if (len != register_bytes * 2)
    {
      FUNC3 ("Wrong sized register packet (expected %d bytes, got %d)", 2*register_bytes, len);
      if (len > register_bytes * 2)
	len = register_bytes * 2;
    }
  FUNC0 (buf, registers, len / 2);
}