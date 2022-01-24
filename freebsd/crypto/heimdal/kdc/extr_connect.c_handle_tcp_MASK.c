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
struct descr {scalar_t__ timeout; int len; char* buf; int /*<<< orphan*/  port; int /*<<< orphan*/  addr_string; int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5KRB_ERR_FIELD_TOOLONG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct descr*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct descr*) ; 
 int /*<<< orphan*/  FUNC2 (struct descr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,struct descr*) ; 
 scalar_t__ enable_http ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct descr*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct descr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct descr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  rk_SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct descr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC18(krb5_context context,
	   krb5_kdc_configuration *config,
	   struct descr *d, int idx, int min_free)
{
    unsigned char buf[1024];
    int n;
    int ret = 0;

    if (d[idx].timeout == 0) {
	FUNC0 (context, config, d, idx, min_free);
	return;
    }

    n = FUNC14(d[idx].s, buf, sizeof(buf), 0, NULL, NULL);
    if(FUNC15(n)){
	FUNC10(context, rk_SOCK_ERRNO, "recvfrom failed from %s to %s/%d",
		  d[idx].addr_string, FUNC2(d + idx),
		  FUNC13(d[idx].port));
	return;
    } else if (n == 0) {
	FUNC11(context, "connection closed before end of data after %lu "
		   "bytes from %s to %s/%d", (unsigned long)d[idx].len,
		   d[idx].addr_string, FUNC2(d + idx),
		   FUNC13(d[idx].port));
	FUNC1 (d + idx);
	return;
    }
    if (FUNC4 (context, config, &d[idx], n))
	return;
    FUNC12(d[idx].buf + d[idx].len, buf, n);
    d[idx].len += n;
    if(d[idx].len > 4 && d[idx].buf[0] == 0) {
	ret = FUNC6 (context, config, &d[idx]);
    } else if(enable_http &&
	      d[idx].len >= 4 &&
	      FUNC17((char *)d[idx].buf, "GET ", 4) == 0 &&
	      FUNC17((char *)d[idx].buf + d[idx].len - 4,
		      "\r\n\r\n", 4) == 0) {

        /* remove the trailing \r\n\r\n so the string is NUL terminated */
        d[idx].buf[d[idx].len - 4] = '\0';

	ret = FUNC5 (context, config, &d[idx]);
	if (ret < 0)
	    FUNC1 (d + idx);
    } else if (d[idx].len > 4) {
	FUNC7 (context, config,
		 0, "TCP data of strange type from %s to %s/%d",
		 d[idx].addr_string, FUNC2(d + idx),
		 FUNC13(d[idx].port));
	if (d[idx].buf[0] & 0x80) {
	    krb5_data reply;

	    FUNC7 (context, config, 0, "TCP extension not supported");

	    ret = FUNC9(context,
				KRB5KRB_ERR_FIELD_TOOLONG,
				NULL,
				NULL,
				NULL,
				NULL,
				NULL,
				NULL,
				&reply);
	    if (ret == 0) {
		FUNC16(context, config, TRUE, d + idx, &reply);
		FUNC8(&reply);
	    }
	}
	FUNC1(d + idx);
	return;
    }
    if (ret < 0)
	return;
    else if (ret == 1) {
	FUNC3(context, config,
		   d[idx].buf, d[idx].len, TRUE, &d[idx]);
	FUNC1(d + idx);
    }
}