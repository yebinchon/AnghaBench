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
struct _krb5_key_data {int /*<<< orphan*/ * schedule; int /*<<< orphan*/  key; } ;
struct _krb5_encryption_type {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct _krb5_key_data*,struct _krb5_encryption_type*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(krb5_context context, struct _krb5_key_data *key,
	      struct _krb5_encryption_type *et)
{
    FUNC1(context, key->key);
    if(key->schedule) {
	FUNC0(context, key, et);
	key->schedule = NULL;
    }
}