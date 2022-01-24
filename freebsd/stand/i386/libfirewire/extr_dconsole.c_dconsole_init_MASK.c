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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct dcons_buf {int dummy; } ;

/* Variables and functions */
 int DCONS_BUF_SIZE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/ * dcons_buffer ; 
 int /*<<< orphan*/  FUNC1 (struct dcons_buf*,int,int /*<<< orphan*/ ) ; 
 int dcons_paddr ; 
 int dcons_started ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(int arg)
{
    char buf[16], *dbuf;
    int size;

    if (dcons_started && arg == 0)
	return 0;
    dcons_started = 1;

    size = DCONS_BUF_SIZE;
    dbuf = (char *)FUNC3((vm_offset_t)&dcons_buffer[0]);
    dcons_paddr = FUNC0(dbuf);
    FUNC5(buf, "0x%08x", dcons_paddr);
    FUNC4("dcons.addr", buf, 1);

    FUNC1((struct dcons_buf *)dbuf, size, sc);
    FUNC5(buf, "%d", size);
    FUNC4("dcons.size", buf, 1);
    FUNC2();
    return(0);
}