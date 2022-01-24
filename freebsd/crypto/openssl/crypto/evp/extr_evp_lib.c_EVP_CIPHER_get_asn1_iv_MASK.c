#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  oiv; int /*<<< orphan*/  iv; } ;
typedef  TYPE_1__ EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  ASN1_TYPE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC4(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    int i = 0;
    unsigned int l;

    if (type != NULL) {
        l = FUNC1(c);
        FUNC2(l <= sizeof(c->iv));
        i = FUNC0(type, c->oiv, l);
        if (i != (int)l)
            return -1;
        else if (i > 0)
            FUNC3(c->iv, c->oiv, l);
    }
    return i;
}