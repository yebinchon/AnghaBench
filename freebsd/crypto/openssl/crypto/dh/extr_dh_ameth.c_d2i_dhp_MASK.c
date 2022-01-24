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
struct TYPE_3__ {int /*<<< orphan*/ * ameth; } ;
typedef  TYPE_1__ EVP_PKEY ;
typedef  int /*<<< orphan*/  DH ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned char const**,long) ; 
 int /*<<< orphan*/  dhx_asn1_meth ; 

__attribute__((used)) static DH *FUNC2(const EVP_PKEY *pkey, const unsigned char **pp,
                   long length)
{
    if (pkey->ameth == &dhx_asn1_meth)
        return FUNC1(NULL, pp, length);
    return FUNC0(NULL, pp, length);
}