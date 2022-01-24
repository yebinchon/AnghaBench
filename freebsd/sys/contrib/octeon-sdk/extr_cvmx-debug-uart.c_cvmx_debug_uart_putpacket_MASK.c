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
 int /*<<< orphan*/  cvmx_debug_uart ; 
 int /*<<< orphan*/  cvmx_debug_uart_lock ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(char *packet)
{
    size_t i;
    unsigned char csum;
    unsigned char *ptr = (unsigned char *) packet;
    char csumstr[3];

    for (csum = 0, i = 0; ptr[i]; i++)
      csum += ptr[i];
    FUNC0(csumstr, csum);

    FUNC1(&cvmx_debug_uart_lock);
    FUNC3(cvmx_debug_uart, '$');
    FUNC4(cvmx_debug_uart, packet);
    FUNC3(cvmx_debug_uart, '#');
    FUNC4(cvmx_debug_uart, csumstr);
    FUNC2(&cvmx_debug_uart_lock);

    return 0;
}