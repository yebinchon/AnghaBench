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
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  TYPE_2__* hx509_certs ;
struct TYPE_6__ {int /*<<< orphan*/  ops_data; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* store ) (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int HX509_UNSUPPORTED_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC2(hx509_context context,
		  hx509_certs certs,
		  int flags,
		  hx509_lock lock)
{
    if (certs->ops->store == NULL) {
	FUNC0(context, 0, HX509_UNSUPPORTED_OPERATION,
			       "keystore if type %s doesn't support "
			       "store operation",
			       certs->ops->name);
	return HX509_UNSUPPORTED_OPERATION;
    }

    return (*certs->ops->store)(context, certs, certs->ops_data, flags, lock);
}