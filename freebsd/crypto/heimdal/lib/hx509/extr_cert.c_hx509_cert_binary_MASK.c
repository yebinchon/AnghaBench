#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_3__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ heim_octet_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  Certificate ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(hx509_context context, hx509_cert c, heim_octet_string *os)
{
    size_t size;
    int ret;

    os->data = NULL;
    os->length = 0;

    FUNC0(Certificate, os->data, os->length,
		       FUNC2(c), &size, ret);
    if (ret) {
	os->data = NULL;
	os->length = 0;
	return ret;
    }
    if (os->length != size)
	FUNC1("internal ASN.1 encoder error");

    return ret;
}