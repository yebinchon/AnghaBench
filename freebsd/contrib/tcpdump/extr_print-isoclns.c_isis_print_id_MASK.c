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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int LSP_ID_LEN ; 
 int NODE_ID_LEN ; 
 int SYSTEM_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(const uint8_t *cp, int id_len)
{
    int i;
    static char id[sizeof("xxxx.xxxx.xxxx.yy-zz")];
    char *pos = id;
    int sysid_len;

    sysid_len = SYSTEM_ID_LEN;
    if (sysid_len > id_len)
        sysid_len = id_len;
    for (i = 1; i <= sysid_len; i++) {
        FUNC0(pos, sizeof(id) - (pos - id), "%02x", *cp++);
	pos += FUNC1(pos);
	if (i == 2 || i == 4)
	    *pos++ = '.';
	}
    if (id_len >= NODE_ID_LEN) {
        FUNC0(pos, sizeof(id) - (pos - id), ".%02x", *cp++);
	pos += FUNC1(pos);
    }
    if (id_len == LSP_ID_LEN)
        FUNC0(pos, sizeof(id) - (pos - id), "-%02x", *cp);
    return (id);
}