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
struct krb5_krbhst_info {int proto; int port; int def_port; char* hostname; struct addrinfo* ai; } ;
struct krb5_krbhst_data {int fallback_count; int /*<<< orphan*/  flags; int /*<<< orphan*/  realm; } ;
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  KD_FALLBACK ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct krb5_krbhst_data*,struct krb5_krbhst_info*) ; 
 int FUNC2 (char**,char*,char const*,int,...) ; 
 struct krb5_krbhst_info* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 size_t FUNC9 (char*) ; 

__attribute__((used)) static krb5_error_code
FUNC10(krb5_context context, struct krb5_krbhst_data *kd,
		   const char *serv_string, int port, int proto)
{
    char *host = NULL;
    int ret;
    struct addrinfo *ai;
    struct addrinfo hints;
    char portstr[NI_MAXSERV];

    FUNC0(context, 2, "fallback lookup %d for realm %s (service %s)",
		kd->fallback_count, kd->realm, serv_string);

    /*
     * Don't try forever in case the DNS server keep returning us
     * entries (like wildcard entries or the .nu TLD)
     */
    if(kd->fallback_count >= 5) {
	kd->flags |= KD_FALLBACK;
	return 0;
    }

    if(kd->fallback_count == 0)
	ret = FUNC2(&host, "%s.%d.", serv_string, kd->realm);
    else
	ret = FUNC2(&host, "%s-%d.%d.",
		       serv_string, kd->fallback_count, kd->realm);

    if (ret < 0 || host == NULL)
	return ENOMEM;

    FUNC6(&hints, proto);
    FUNC8(portstr, sizeof(portstr), "%d", port);
    ret = FUNC5(host, portstr, &hints, &ai);
    if (ret) {
	/* no more hosts, so we're done here */
	FUNC4(host);
	kd->flags |= KD_FALLBACK;
    } else {
	struct krb5_krbhst_info *hi;
	size_t hostlen = FUNC9(host);

	hi = FUNC3(1, sizeof(*hi) + hostlen);
	if(hi == NULL) {
	    FUNC4(host);
	    return ENOMEM;
	}

	hi->proto = proto;
	hi->port  = hi->def_port = port;
	hi->ai    = ai;
	FUNC7(hi->hostname, host, hostlen);
	hi->hostname[hostlen] = '\0';
	FUNC4(host);
	FUNC1(kd, hi);
	kd->fallback_count++;
    }
    return 0;
}