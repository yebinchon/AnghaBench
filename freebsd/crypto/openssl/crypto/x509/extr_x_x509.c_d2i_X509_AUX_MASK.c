#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  aux; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__**,unsigned char const**,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const**,long) ; 

X509 *FUNC3(X509 **a, const unsigned char **pp, long length)
{
    const unsigned char *q;
    X509 *ret;
    int freeret = 0;

    /* Save start position */
    q = *pp;

    if (a == NULL || *a == NULL)
        freeret = 1;
    ret = FUNC1(a, &q, length);
    /* If certificate unreadable then forget it */
    if (ret == NULL)
        return NULL;
    /* update length */
    length -= q - *pp;
    if (length > 0 && !FUNC2(&ret->aux, &q, length))
        goto err;
    *pp = q;
    return ret;
 err:
    if (freeret) {
        FUNC0(ret);
        if (a)
            *a = NULL;
    }
    return NULL;
}