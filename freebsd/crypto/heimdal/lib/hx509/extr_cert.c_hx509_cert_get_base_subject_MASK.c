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
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  TYPE_2__* hx509_cert ;
struct TYPE_5__ {int /*<<< orphan*/  subject; } ;
struct TYPE_7__ {TYPE_1__ tbsCertificate; } ;
struct TYPE_6__ {TYPE_3__* data; scalar_t__ basename; } ;

/* Variables and functions */
 int HX509_PROXY_CERTIFICATE_NOT_CANONICALIZED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 

int
FUNC4(hx509_context context, hx509_cert c,
			    hx509_name *name)
{
    if (c->basename)
	return FUNC1(context, c->basename, name);
    if (FUNC3(context, c->data, NULL) == 0) {
	int ret = HX509_PROXY_CERTIFICATE_NOT_CANONICALIZED;
	FUNC2(context, 0, ret,
			       "Proxy certificate have not been "
			       "canonicalize yet, no base name");
	return ret;
    }
    return FUNC0(&c->data->tbsCertificate.subject, name);
}