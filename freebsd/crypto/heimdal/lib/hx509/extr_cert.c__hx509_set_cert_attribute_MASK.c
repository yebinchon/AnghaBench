#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  TYPE_2__* hx509_cert_attribute ;
typedef  TYPE_3__* hx509_cert ;
typedef  int /*<<< orphan*/  heim_oid ;
typedef  int /*<<< orphan*/  heim_octet_string ;
struct TYPE_8__ {int len; TYPE_2__** val; } ;
struct TYPE_10__ {TYPE_1__ attrs; } ;
struct TYPE_9__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int) ; 
 void* FUNC5 (TYPE_2__**,int) ; 

int
FUNC6(hx509_context context,
			  hx509_cert cert,
			  const heim_oid *oid,
			  const heim_octet_string *attr)
{
    hx509_cert_attribute a;
    void *d;

    if (FUNC2(cert, oid) != NULL)
	return 0;

    d = FUNC5(cert->attrs.val,
		sizeof(cert->attrs.val[0]) * (cert->attrs.len + 1));
    if (d == NULL) {
	FUNC3(context);
	return ENOMEM;
    }
    cert->attrs.val = d;

    a = FUNC4(sizeof(*a));
    if (a == NULL)
	return ENOMEM;

    FUNC0(attr, &a->data);
    FUNC1(oid, &a->oid);

    cert->attrs.val[cert->attrs.len] = a;
    cert->attrs.len++;

    return 0;
}