#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_2__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_OP_PRIVATE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(EVP_PKEY *pkey, const unsigned char *priv,
                            size_t len)
{
    return FUNC0(pkey, pkey->ameth->pkey_id, NULL, priv, len,
                       KEY_OP_PRIVATE);
}