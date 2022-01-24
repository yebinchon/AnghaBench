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
typedef  int /*<<< orphan*/  u_int8_t ;

/* Variables and functions */
 int HD_COMMAND ; 
 int HD_WRITE ; 
 int STROBE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int type, int data)
{
    FUNC0(3, "%s -> 0x%02x", (type == HD_COMMAND) ? "cmd " : "data", data);
    FUNC1(type | HD_WRITE | STROBE);	/* set direction, address */
    FUNC1(type | HD_WRITE);		/* raise E */
    FUNC2((u_int8_t) data);		/* drive data */
    FUNC1(type | HD_WRITE | STROBE);	/* lower E */
}