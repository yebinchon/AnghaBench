#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;
struct ntlm_targetinfo {int /*<<< orphan*/  avflags; int /*<<< orphan*/  dnstreename; int /*<<< orphan*/  dnsdomainname; int /*<<< orphan*/  dnsservername; int /*<<< orphan*/  domainname; int /*<<< orphan*/  servername; } ;
struct ntlm_buf {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  krb5_storage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_LE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ntlm_targetinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

int
FUNC9(const struct ntlm_buf *data,
			    int ucs2,
			    struct ntlm_targetinfo *ti)
{
    uint16_t type, len;
    krb5_storage *in;
    int ret = 0, done = 0;

    FUNC7(ti, 0, sizeof(*ti));

    if (data->length == 0)
	return 0;

    in = FUNC4(data->data, data->length);
    if (in == NULL)
	return ENOMEM;
    FUNC6(in, KRB5_STORAGE_BYTEORDER_LE);

    while (!done) {
	FUNC0(FUNC1(in, &type), 0);
	FUNC0(FUNC1(in, &len), 0);

	switch (type) {
	case 0:
	    done = 1;
	    break;
	case 1:
	    FUNC0(FUNC8(in, ucs2, len, &ti->servername), 0);
	    break;
	case 2:
	    FUNC0(FUNC8(in, ucs2, len, &ti->domainname), 0);
	    break;
	case 3:
	    FUNC0(FUNC8(in, ucs2, len, &ti->dnsservername), 0);
	    break;
	case 4:
	    FUNC0(FUNC8(in, ucs2, len, &ti->dnsdomainname), 0);
	    break;
	case 5:
	    FUNC0(FUNC8(in, ucs2, len, &ti->dnstreename), 0);
	    break;
	case 6:
	    FUNC0(FUNC2(in, &ti->avflags), 0);
	    break;
	default:
	    FUNC5(in, len, SEEK_CUR);
	    break;
	}
    }
 out:
    if (in)
	FUNC3(in);
    return ret;
}