#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _krb5_key_data {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  scalar_t__ krb5_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct _krb5_key_data*,void*,size_t,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct _krb5_key_data*,void*,size_t,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static krb5_error_code
FUNC3(krb5_context context,
		struct _krb5_key_data *key,
		void *data,
		size_t len,
		krb5_boolean encryptp,
		int usage,
		void *ivec)
{
    krb5_error_code ret;
    unsigned keyusage = usage;

    if((ret = FUNC2 (context, &keyusage)) != 0)
	return ret;

    if (encryptp)
	return FUNC1 (context, key, data, len, keyusage, ivec);
    else
	return FUNC0 (context, key, data, len, keyusage, ivec);
}