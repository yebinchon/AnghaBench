#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_crypto ;
typedef  int /*<<< orphan*/  heim_octet_string ;
struct TYPE_5__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {TYPE_3__ key; int /*<<< orphan*/  c; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int HX509_CRYPTO_INTERNAL_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 

int
FUNC5(hx509_crypto crypto, heim_octet_string *key)
{
    if (crypto->key.data) {
	FUNC3(crypto->key.data);
	crypto->key.length = 0;
    }

    crypto->key.length = FUNC0(crypto->c);
    crypto->key.data = FUNC4(crypto->key.length);
    if (crypto->key.data == NULL) {
	crypto->key.length = 0;
	return ENOMEM;
    }
    if (FUNC1(crypto->key.data, crypto->key.length) <= 0) {
	FUNC3(crypto->key.data);
	crypto->key.data = NULL;
	crypto->key.length = 0;
	return HX509_CRYPTO_INTERNAL_ERROR;
    }
    if (key)
	return FUNC2(&crypto->key, key);
    else
	return 0;
}