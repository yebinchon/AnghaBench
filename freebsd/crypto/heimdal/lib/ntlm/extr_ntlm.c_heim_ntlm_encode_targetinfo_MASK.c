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
struct ntlm_targetinfo {int /*<<< orphan*/  avflags; int /*<<< orphan*/  dnstreename; int /*<<< orphan*/  dnsdomainname; int /*<<< orphan*/  dnsservername; int /*<<< orphan*/  domainname; int /*<<< orphan*/  servername; } ;
struct ntlm_buf {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
struct TYPE_3__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ krb5_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_LE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(const struct ntlm_targetinfo *ti,
			    int ucs2,
			    struct ntlm_buf *data)
{
    krb5_error_code ret;
    krb5_storage *out;

    data->data = NULL;
    data->length = 0;

    out = FUNC2();
    if (out == NULL)
	return ENOMEM;

    FUNC4(out, KRB5_STORAGE_BYTEORDER_LE);

    if (ti->servername)
	FUNC0(FUNC1(out, 1, ucs2, ti->servername), 0);
    if (ti->domainname)
	FUNC0(FUNC1(out, 2, ucs2, ti->domainname), 0);
    if (ti->dnsservername)
	FUNC0(FUNC1(out, 3, ucs2, ti->dnsservername), 0);
    if (ti->dnsdomainname)
	FUNC0(FUNC1(out, 4, ucs2, ti->dnsdomainname), 0);
    if (ti->dnstreename)
	FUNC0(FUNC1(out, 5, ucs2, ti->dnstreename), 0);
    if (ti->avflags) {
	FUNC0(FUNC7(out, 6), 0);
	FUNC0(FUNC7(out, 4), 0);
	FUNC0(FUNC8(out, ti->avflags), 0);
    }

    /* end tag */
    FUNC0(FUNC6(out, 0), 0);
    FUNC0(FUNC6(out, 0), 0);

    {
	krb5_data d;
	ret = FUNC5(out, &d);
	data->data = d.data;
	data->length = d.length;
    }
out:
    FUNC3(out);
    return ret;
}