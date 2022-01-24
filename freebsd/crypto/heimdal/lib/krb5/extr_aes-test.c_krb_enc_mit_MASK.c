#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_9__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {TYPE_2__ ciphertext; int /*<<< orphan*/  enctype; scalar_t__ kvno; } ;
typedef  TYPE_1__ krb5_enc_data ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(krb5_context context,
	    krb5_enctype enctype,
	    krb5_keyblock *key,
	    unsigned usage,
	    krb5_data *cipher,
	    krb5_data *clear)
{
#ifndef HEIMDAL_SMALLER
    krb5_error_code ret;
    krb5_enc_data e;
    krb5_data decrypt;
    size_t len;

    e.kvno = 0;
    e.enctype = enctype;
    e.ciphertext = *cipher;

    ret = FUNC0(context, *key, usage, NULL, &e, &decrypt);
    if (ret)
	return ret;

    if (decrypt.length != clear->length ||
	FUNC4(decrypt.data, clear->data, decrypt.length) != 0) {
	FUNC3(context, "clear text not same");
	return EINVAL;
    }

    FUNC2(&decrypt);

    ret = FUNC1(context, enctype, clear->length, &len);
    if (ret)
	return ret;

    if (len != cipher->length) {
	FUNC3(context, "c_encrypt_length wrong %lu != %lu",
		   (unsigned long)len, (unsigned long)cipher->length);
	return EINVAL;
    }
#endif /* HEIMDAL_SMALLER */
    return 0;
}