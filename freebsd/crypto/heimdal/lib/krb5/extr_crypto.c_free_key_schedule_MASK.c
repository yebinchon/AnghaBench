#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _krb5_key_data {TYPE_2__* schedule; } ;
struct _krb5_encryption_type {TYPE_1__* keytype; } ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* cleanup ) (int /*<<< orphan*/ ,struct _krb5_key_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct _krb5_key_data*) ; 

__attribute__((used)) static void
FUNC3(krb5_context context,
		  struct _krb5_key_data *key,
		  struct _krb5_encryption_type *et)
{
    if (et->keytype->cleanup)
	(*et->keytype->cleanup)(context, key);
    FUNC1(key->schedule->data, 0, key->schedule->length);
    FUNC0(context, key->schedule);
}