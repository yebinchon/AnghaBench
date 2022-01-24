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
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__ extnValue; } ;
typedef  int /*<<< orphan*/  ProxyCertInfo ;
typedef  TYPE_2__ Extension ;
typedef  int /*<<< orphan*/  Certificate ;

/* Variables and functions */
 int HX509_EXTENSION_NOT_FOUND ; 
 int HX509_EXTRA_DATA_AFTER_STRUCTURE ; 
 int /*<<< orphan*/  asn1_oid_id_pkix_pe_proxyCertInfo ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,size_t*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(hx509_context context,
	      const Certificate *cert,
	      ProxyCertInfo *rinfo)
{
    ProxyCertInfo info;
    const Extension *e;
    size_t size;
    int ret;
    size_t i = 0;

    if (rinfo)
	FUNC4(rinfo, 0, sizeof(*rinfo));

    e = FUNC1(cert, &asn1_oid_id_pkix_pe_proxyCertInfo, &i);
    if (e == NULL) {
	FUNC3(context);
	return HX509_EXTENSION_NOT_FOUND;
    }

    ret = FUNC0(e->extnValue.data,
			       e->extnValue.length,
			       &info,
			       &size);
    if (ret) {
	FUNC3(context);
	return ret;
    }
    if (size != e->extnValue.length) {
	FUNC2(&info);
	FUNC3(context);
	return HX509_EXTRA_DATA_AFTER_STRUCTURE;
    }
    if (rinfo == NULL)
	FUNC2(&info);
    else
	*rinfo = info;

    return 0;
}