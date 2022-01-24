#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  attributes; } ;
typedef  TYPE_1__ PKCS8_PRIV_KEY_INFO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,unsigned char const*,int) ; 

int FUNC1(PKCS8_PRIV_KEY_INFO *p8, int nid, int type,
                                const unsigned char *bytes, int len)
{
    if (FUNC0(&p8->attributes, nid, type, bytes, len) != NULL)
        return 1;
    return 0;
}