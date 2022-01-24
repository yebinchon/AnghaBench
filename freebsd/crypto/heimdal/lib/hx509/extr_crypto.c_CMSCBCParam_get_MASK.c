#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_crypto ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_8__ {size_t length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ heim_octet_string ;
struct TYPE_7__ {int /*<<< orphan*/ * param; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,TYPE_2__ const*,size_t*,int) ; 
 int /*<<< orphan*/  CMSCBCParameter ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(hx509_context context, const hx509_crypto crypto,
		 const heim_octet_string *ivec, heim_octet_string *param)
{
    size_t size;
    int ret;

    FUNC2(crypto->param == NULL);
    if (ivec == NULL)
	return 0;

    FUNC0(CMSCBCParameter, param->data, param->length,
		       ivec, &size, ret);
    if (ret == 0 && size != param->length)
	FUNC1("Internal asn1 encoder failure");
    if (ret)
	FUNC3(context);
    return ret;
}