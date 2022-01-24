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
struct TYPE_3__ {scalar_t__ min_tls; } ;
typedef  TYPE_1__ SSL_CIPHER ;

/* Variables and functions */
 scalar_t__ TLS1_VERSION ; 
 char const* FUNC0 (scalar_t__) ; 

const char *FUNC1(const SSL_CIPHER *c)
{
    if (c == NULL)
        return "(NONE)";

    /*
     * Backwards-compatibility crutch.  In almost all contexts we report TLS
     * 1.0 as "TLSv1", but for ciphers we report "TLSv1.0".
     */
    if (c->min_tls == TLS1_VERSION)
        return "TLSv1.0";
    return FUNC0(c->min_tls);
}