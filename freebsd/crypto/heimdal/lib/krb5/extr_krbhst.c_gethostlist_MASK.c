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
typedef  int /*<<< orphan*/  krb5_krbhst_info ;
typedef  int /*<<< orphan*/  krb5_krbhst_handle ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  host ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ KRB5_KDC_UNREACH ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC9 (char*) ; 

__attribute__((used)) static krb5_error_code
FUNC10(krb5_context context, const char *realm,
	    unsigned int type, char ***hostlist)
{
    krb5_error_code ret;
    int nhost = 0;
    krb5_krbhst_handle handle;
    char host[MAXHOSTNAMELEN];
    krb5_krbhst_info *hostinfo;

    ret = FUNC4(context, realm, type, &handle);
    if (ret)
	return ret;

    while(FUNC5(context, handle, &hostinfo) == 0)
	nhost++;
    if(nhost == 0) {
	FUNC8(context, KRB5_KDC_UNREACH,
			       FUNC0("No KDC found for realm %s", ""), realm);
	return KRB5_KDC_UNREACH;
    }
    *hostlist = FUNC1(nhost + 1, sizeof(**hostlist));
    if(*hostlist == NULL) {
	FUNC3(context, handle);
	return ENOMEM;
    }

    FUNC7(context, handle);
    nhost = 0;
    while(FUNC6(context, handle,
				     host, sizeof(host)) == 0) {
	if(((*hostlist)[nhost++] = FUNC9(host)) == NULL) {
	    FUNC2(context, *hostlist);
	    FUNC3(context, handle);
	    return ENOMEM;
	}
    }
    (*hostlist)[nhost] = NULL;
    FUNC3(context, handle);
    return 0;
}