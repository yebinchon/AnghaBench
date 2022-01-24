#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct arange {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_5__ {struct arange* data; } ;
struct TYPE_4__ {TYPE_2__ address; } ;
typedef  TYPE_1__ krb5_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2 (krb5_context context, krb5_address *addr)
{
    struct arange *a;
    a = addr->address.data;
    FUNC1(context, &a->low);
    FUNC1(context, &a->high);
    FUNC0(&addr->address);
    return 0;
}