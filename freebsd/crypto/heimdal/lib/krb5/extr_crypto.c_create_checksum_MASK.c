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
struct _krb5_key_data {int dummy; } ;
struct _krb5_checksum_type {int flags; scalar_t__ (* checksum ) (int /*<<< orphan*/ ,struct _krb5_key_data*,void*,size_t,unsigned int,TYPE_1__*) ;int /*<<< orphan*/  checksumsize; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/ * krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  cksumtype; } ;
typedef  TYPE_1__ Checksum ;

/* Variables and functions */
 int F_DISABLED ; 
 int F_KEYED ; 
 scalar_t__ KRB5_PROG_SUMTYPE_NOSUPP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,struct _krb5_checksum_type*,struct _krb5_key_data**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct _krb5_key_data*,void*,size_t,unsigned int,TYPE_1__*) ; 

__attribute__((used)) static krb5_error_code
FUNC6 (krb5_context context,
		 struct _krb5_checksum_type *ct,
		 krb5_crypto crypto,
		 unsigned usage,
		 void *data,
		 size_t len,
		 Checksum *result)
{
    krb5_error_code ret;
    struct _krb5_key_data *dkey;
    int keyed_checksum;

    if (ct->flags & F_DISABLED) {
	FUNC2 (context);
	return KRB5_PROG_SUMTYPE_NOSUPP;
    }
    keyed_checksum = (ct->flags & F_KEYED) != 0;
    if(keyed_checksum && crypto == NULL) {
	FUNC4 (context, KRB5_PROG_SUMTYPE_NOSUPP,
				FUNC0("Checksum type %s is keyed but no "
				   "crypto context (key) was passed in", ""),
				ct->name);
	return KRB5_PROG_SUMTYPE_NOSUPP; /* XXX */
    }
    if(keyed_checksum) {
	ret = FUNC1(context, crypto, usage, ct, &dkey);
	if (ret)
	    return ret;
    } else
	dkey = NULL;
    result->cksumtype = ct->type;
    ret = FUNC3(&result->checksum, ct->checksumsize);
    if (ret)
	return (ret);
    return (*ct->checksum)(context, dkey, data, len, usage, result);
}