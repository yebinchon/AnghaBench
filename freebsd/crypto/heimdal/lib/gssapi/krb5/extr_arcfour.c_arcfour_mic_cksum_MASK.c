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
typedef  void u_char ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_5__ {void const* data; } ;
struct TYPE_6__ {TYPE_1__ checksum; } ;
typedef  TYPE_2__ Checksum ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,void*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,void const*,size_t) ; 

__attribute__((used)) static krb5_error_code
FUNC8(krb5_context context,
		  krb5_keyblock *key, unsigned usage,
		  u_char *sgn_cksum, size_t sgn_cksum_sz,
		  const u_char *v1, size_t l1,
		  const void *v2, size_t l2,
		  const void *v3, size_t l3)
{
    Checksum CKSUM;
    u_char *ptr;
    size_t len;
    krb5_crypto crypto;
    krb5_error_code ret;

    FUNC0(sgn_cksum_sz == 8);

    len = l1 + l2 + l3;

    ptr = FUNC6(len);
    if (ptr == NULL)
	return ENOMEM;

    FUNC7(ptr, v1, l1);
    FUNC7(ptr + l1, v2, l2);
    FUNC7(ptr + l1 + l2, v3, l3);

    ret = FUNC5(context, key, 0, &crypto);
    if (ret) {
	FUNC1(ptr);
	return ret;
    }

    ret = FUNC3(context,
			       crypto,
			       usage,
			       0,
			       ptr, len,
			       &CKSUM);
    FUNC1(ptr);
    if (ret == 0) {
	FUNC7(sgn_cksum, CKSUM.checksum.data, sgn_cksum_sz);
	FUNC2(&CKSUM);
    }
    FUNC4(context, crypto);

    return ret;
}