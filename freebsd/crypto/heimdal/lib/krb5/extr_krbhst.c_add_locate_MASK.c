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
struct sockaddr {int dummy; } ;
struct krb5_krbhst_info {char* hostname; struct addrinfo* ai; int /*<<< orphan*/  def_port; int /*<<< orphan*/  port; int /*<<< orphan*/  proto; } ;
struct krb5_krbhst_data {int dummy; } ;
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  host ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  FUNC0 (struct krb5_krbhst_data*,struct krb5_krbhst_info*) ; 
 struct krb5_krbhst_info* FUNC1 (int,int) ; 
 int FUNC2 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC3 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct krb5_krbhst_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr*) ; 
 size_t FUNC9 (char*) ; 

__attribute__((used)) static krb5_error_code
FUNC10(void *ctx, int type, struct sockaddr *addr)
{
    struct krb5_krbhst_info *hi;
    struct krb5_krbhst_data *kd = ctx;
    char host[NI_MAXHOST], port[NI_MAXSERV];
    struct addrinfo hints, *ai;
    socklen_t socklen;
    size_t hostlen;
    int ret;

    socklen = FUNC8(addr);

    ret = FUNC3(addr, socklen, host, sizeof(host), port, sizeof(port),
		      NI_NUMERICHOST|NI_NUMERICSERV);
    if (ret != 0)
	return 0;

    FUNC5(&hints, FUNC4(kd));
    ret = FUNC2(host, port, &hints, &ai);
    if (ret)
	return 0;

    hostlen = FUNC9(host);

    hi = FUNC1(1, sizeof(*hi) + hostlen);
    if(hi == NULL)
	return ENOMEM;

    hi->proto = FUNC4(kd);
    hi->port  = hi->def_port = FUNC7(addr);
    hi->ai    = ai;
    FUNC6(hi->hostname, host, hostlen);
    hi->hostname[hostlen] = '\0';
    FUNC0(kd, hi);

    return 0;
}