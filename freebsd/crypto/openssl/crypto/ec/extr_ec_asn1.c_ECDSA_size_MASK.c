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
struct TYPE_3__ {int length; unsigned char* data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_1__ ASN1_INTEGER ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  V_ASN1_INTEGER ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC4(const EC_KEY *r)
{
    int ret, i;
    ASN1_INTEGER bs;
    unsigned char buf[4];
    const EC_GROUP *group;

    if (r == NULL)
        return 0;
    group = FUNC2(r);
    if (group == NULL)
        return 0;

    i = FUNC1(group);
    if (i == 0)
        return 0;
    bs.length = (i + 7) / 8;
    bs.data = buf;
    bs.type = V_ASN1_INTEGER;
    /* If the top bit is set the asn1 encoding is 1 larger. */
    buf[0] = 0xff;

    i = FUNC3(&bs, NULL);
    i += i;                     /* r and s */
    ret = FUNC0(1, i, V_ASN1_SEQUENCE);
    return ret;
}