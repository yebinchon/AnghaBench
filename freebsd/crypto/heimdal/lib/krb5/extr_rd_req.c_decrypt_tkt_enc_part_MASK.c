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
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  EncryptedData ;
typedef  int /*<<< orphan*/  EncTicketPart ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_KU_TICKET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC7 (krb5_context context,
		      krb5_keyblock *key,
		      EncryptedData *enc_part,
		      EncTicketPart *decr_part)
{
    krb5_error_code ret;
    krb5_data plain;
    size_t len;
    krb5_crypto crypto;

    ret = FUNC3(context, key, 0, &crypto);
    if (ret)
	return ret;
    ret = FUNC5 (context,
				      crypto,
				      KRB5_KU_TICKET,
				      enc_part,
				      &plain);
    FUNC2(context, crypto);
    if (ret)
	return ret;

    ret = FUNC1(plain.data, plain.length, decr_part, &len);
    if (ret)
        FUNC6(context, ret,
			       FUNC0("Failed to decode encrypted "
				  "ticket part", ""));
    FUNC4 (&plain);
    return ret;
}