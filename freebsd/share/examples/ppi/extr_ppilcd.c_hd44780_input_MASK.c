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
typedef  int u_int8_t ;

/* Variables and functions */
 int HD_COMMAND ; 
 int HD_READ ; 
 int STROBE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(int type) 
{
    u_int8_t	val;

    FUNC2(type | HD_READ | STROBE);	/* set direction, address */ 
    FUNC2(type | HD_READ);		/* raise E */
    FUNC1(val);			/* read data */
    FUNC2(type | HD_READ | STROBE);	/* lower E */

    FUNC0(3, "0x%02x -> %s", val, (type == HD_COMMAND) ? "cmd " : "data");
    return(val);
}