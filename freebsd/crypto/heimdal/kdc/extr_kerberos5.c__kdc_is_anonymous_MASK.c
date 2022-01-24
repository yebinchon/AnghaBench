#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* krb5_principal ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int krb5_boolean ;
struct TYPE_5__ {int len; int /*<<< orphan*/ * val; } ;
struct TYPE_6__ {scalar_t__ name_type; TYPE_1__ name_string; } ;
struct TYPE_7__ {TYPE_2__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_ANON_NAME ; 
 scalar_t__ KRB5_NT_WELLKNOWN ; 
 int /*<<< orphan*/  KRB5_WELLKNOWN_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

krb5_boolean
FUNC1(krb5_context context, krb5_principal principal)
{
    if (principal->name.name_type != KRB5_NT_WELLKNOWN ||
	principal->name.name_string.len != 2 ||
	FUNC0(principal->name.name_string.val[0], KRB5_WELLKNOWN_NAME) != 0 ||
	FUNC0(principal->name.name_string.val[1], KRB5_ANON_NAME) != 0)
	return 0;
    return 1;
}