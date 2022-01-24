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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int*,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

char *
FUNC3(netdissect_options *ndo, const u_char *p, u_int length)
{

    static u_int dlci, addr_len;
    static uint8_t flags[4];
    static char buffer[sizeof("DLCI xxxxxxxxxx")];
    FUNC0(buffer, 0, sizeof(buffer));

    if (FUNC1(ndo, p, &dlci, &addr_len, flags, length) == 1){
        FUNC2(buffer, sizeof(buffer), "DLCI %u", dlci);
    }

    return buffer;
}