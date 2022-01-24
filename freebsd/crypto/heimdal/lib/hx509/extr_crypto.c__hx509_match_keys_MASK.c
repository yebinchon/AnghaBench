#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  key_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_OID_ID_ECPUBLICKEY ; 
 int /*<<< orphan*/  ASN1_OID_ID_PKCS1_RSAENCRYPTION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

int
FUNC3(hx509_cert c, hx509_private_key key)
{
    if (FUNC0(key->ops->key_oid, ASN1_OID_ID_PKCS1_RSAENCRYPTION) == 0)
	return FUNC2(c, key);
    if (FUNC0(key->ops->key_oid, ASN1_OID_ID_ECPUBLICKEY) == 0)
	return FUNC1(c, key);
    return 0;

}