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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
struct TYPE_7__ {int length; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {scalar_t__ addr_type; TYPE_2__ address; } ;
typedef  TYPE_1__ krb5_address ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ KRB5_ADDRESS_IPPORT ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_LE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int FUNC1 (TYPE_1__*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int FUNC8 (char*,size_t,char*,int) ; 
 size_t FUNC9 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC10 (const krb5_address *addr, char *str, size_t len)
{
    krb5_error_code ret;
    krb5_address addr1, addr2;
    uint16_t port = 0;
    size_t ret_len = 0, l, size = 0;
    krb5_storage *sp;

    sp = FUNC4((krb5_data*)FUNC7(&addr->address));
    if (sp == NULL)
        return ENOMEM;

    /* for totally obscure reasons, these are not in network byteorder */
    FUNC6(sp, KRB5_STORAGE_BYTEORDER_LE);

    FUNC5(sp, 2, SEEK_CUR); /* skip first two bytes */
    FUNC2(sp, &addr1);

    FUNC5(sp, 2, SEEK_CUR); /* skip two bytes */
    FUNC2(sp, &addr2);
    FUNC3(sp);
    if(addr2.addr_type == KRB5_ADDRESS_IPPORT && addr2.address.length == 2) {
	unsigned long value;
	FUNC0(addr2.address.data, &value, 2);
	port = value;
    }
    l = FUNC9(str, "ADDRPORT:", len);
    ret_len += l;
    if (len > l)
	size += l;
    else
	size = len;

    ret = FUNC1(&addr1, str + size, len - size, &l);
    if (ret)
	return ret;
    ret_len += l;
    if (len - size > l)
	size += l;
    else
	size = len;

    ret = FUNC8(str + size, len - size, ",PORT=%u", port);
    if (ret < 0)
	return EINVAL;
    ret_len += ret;
    return ret_len;
}