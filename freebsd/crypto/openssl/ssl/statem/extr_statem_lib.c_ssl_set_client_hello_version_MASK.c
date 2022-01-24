#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int version; int client_version; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int TLS1_2_VERSION ; 
 int FUNC2 (TYPE_1__*,int*,int*,int /*<<< orphan*/ *) ; 

int FUNC3(SSL *s)
{
    int ver_min, ver_max, ret;

    /*
     * In a renegotiation we always send the same client_version that we sent
     * last time, regardless of which version we eventually negotiated.
     */
    if (!FUNC1(s))
        return 0;

    ret = FUNC2(s, &ver_min, &ver_max, NULL);

    if (ret != 0)
        return ret;

    s->version = ver_max;

    /* TLS1.3 always uses TLS1.2 in the legacy_version field */
    if (!FUNC0(s) && ver_max > TLS1_2_VERSION)
        ver_max = TLS1_2_VERSION;

    s->client_version = ver_max;
    return 0;
}