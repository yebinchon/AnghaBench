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
struct TYPE_2__ {int addr; int eax; int ecx; int edx; scalar_t__ ctl; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__ v86 ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(void)
{
    int			hr, minute, sec;
    
    v86.ctl = 0;
    v86.addr = 0x1a;		/* int 0x1a, function 2 */
    v86.eax = 0x0200;
    FUNC1();

    hr = FUNC0((v86.ecx & 0xff00) >> 8);	/* hour in %ch */
    minute = FUNC0(v86.ecx & 0xff);		/* minute in %cl */
    sec = FUNC0((v86.edx & 0xff00) >> 8);	/* second in %dh */
    
    return (hr * 3600 + minute * 60 + sec);
}