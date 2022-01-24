#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_crypto ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {TYPE_1__ key; int /*<<< orphan*/  c; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HX509_CRYPTO_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 

int
FUNC4(hx509_crypto crypto, const void *data, size_t length)
{
    if (FUNC0(crypto->c) > (int)length)
	return HX509_CRYPTO_INTERNAL_ERROR;

    if (crypto->key.data) {
	FUNC1(crypto->key.data);
	crypto->key.data = NULL;
	crypto->key.length = 0;
    }
    crypto->key.data = FUNC2(length);
    if (crypto->key.data == NULL)
	return ENOMEM;
    FUNC3(crypto->key.data, data, length);
    crypto->key.length = length;

    return 0;
}