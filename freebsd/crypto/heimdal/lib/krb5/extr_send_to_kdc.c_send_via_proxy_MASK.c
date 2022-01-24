#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int ai_socktype; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  portstr ;
typedef  scalar_t__ krb5_socket_t ;
struct TYPE_10__ {int /*<<< orphan*/  hostname; } ;
typedef  TYPE_1__ krb5_krbhst_info ;
struct TYPE_11__ {scalar_t__ length; } ;
typedef  TYPE_2__ krb5_data ;
typedef  TYPE_3__* krb5_context ;
typedef  int /*<<< orphan*/  hints ;
struct TYPE_12__ {int /*<<< orphan*/  kdc_timeout; int /*<<< orphan*/  http_proxy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int SOCK_CLOEXEC ; 
 int SOCK_STREAM ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int FUNC5 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ rk_INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ,char*,TYPE_2__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*,char) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC19 (krb5_context context,
		const krb5_krbhst_info *hi,
		const krb5_data *send_data,
		krb5_data *receive)
{
    char *proxy2 = FUNC17(context->http_proxy);
    char *proxy  = proxy2;
    char *prefix = NULL;
    char *colon;
    struct addrinfo hints;
    struct addrinfo *ai, *a;
    int ret;
    krb5_socket_t s = rk_INVALID_SOCKET;
    char portstr[NI_MAXSERV];

    if (proxy == NULL)
	return ENOMEM;
    if (FUNC18 (proxy, "http://", 7) == 0)
	proxy += 7;

    colon = FUNC16(proxy, ':');
    if(colon != NULL)
	*colon++ = '\0';
    FUNC9 (&hints, 0, sizeof(hints));
    hints.ai_family   = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    FUNC14 (portstr, sizeof(portstr), "%d",
	      FUNC10(FUNC7 (colon, FUNC6(80))));
    ret = FUNC5 (proxy, portstr, &hints, &ai);
    FUNC3 (proxy2);
    if (ret)
	return FUNC8(ret, errno);

    for (a = ai; a != NULL; a = a->ai_next) {
	s = FUNC15 (a->ai_family, a->ai_socktype | SOCK_CLOEXEC, a->ai_protocol);
	if (s < 0)
	    continue;
	FUNC11(s);
	if (FUNC2 (s, a->ai_addr, a->ai_addrlen) < 0) {
	    FUNC12 (s);
	    continue;
	}
	break;
    }
    if (a == NULL) {
	FUNC4 (ai);
	return 1;
    }
    FUNC4 (ai);

    ret = FUNC0(&prefix, "http://%d/", hi->hostname);
    if(ret < 0 || prefix == NULL) {
	FUNC1(s);
	return 1;
    }
    ret = FUNC13(s, context->kdc_timeout,
			     prefix, send_data, receive);
    FUNC12 (s);
    FUNC3(prefix);
    if(ret == 0 && receive->length != 0)
	return 0;
    return 1;
}