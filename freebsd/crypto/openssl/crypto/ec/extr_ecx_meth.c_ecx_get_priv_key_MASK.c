#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * privkey; } ;
struct TYPE_6__ {TYPE_4__* ecx; } ;
struct TYPE_8__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_7__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  TYPE_4__ ECX_KEY ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC2(const EVP_PKEY *pkey, unsigned char *priv,
                            size_t *len)
{
    const ECX_KEY *key = pkey->pkey.ecx;

    if (priv == NULL) {
        *len = FUNC0(pkey->ameth->pkey_id);
        return 1;
    }

    if (key == NULL
            || key->privkey == NULL
            || *len < (size_t)FUNC0(pkey->ameth->pkey_id))
        return 0;

    *len = FUNC0(pkey->ameth->pkey_id);
    FUNC1(priv, key->privkey, *len);

    return 1;
}