#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static ASN1_INTEGER *FUNC7(int bits)
{
    unsigned char buf[20];
    ASN1_INTEGER *nonce = NULL;
    int len = (bits - 1) / 8 + 1;
    int i;

    if (len > (int)sizeof(buf))
        goto err;
    if (FUNC4(buf, len) <= 0)
        goto err;

    /* Find the first non-zero byte and creating ASN1_INTEGER object. */
    for (i = 0; i < len && !buf[i]; ++i)
        continue;
    if ((nonce = FUNC1()) == NULL)
        goto err;
    FUNC3(nonce->data);
    nonce->length = len - i;
    nonce->data = FUNC5(nonce->length + 1, "nonce buffer");
    FUNC6(nonce->data, buf + i, nonce->length);
    return nonce;

 err:
    FUNC2(bio_err, "could not create nonce\n");
    FUNC0(nonce);
    return NULL;
}