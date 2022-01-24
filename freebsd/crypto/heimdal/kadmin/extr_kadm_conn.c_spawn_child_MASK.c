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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  scalar_t__ pid_t ;
typedef  int krb5_socket_t ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_address ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __ss ;

/* Variables and functions */
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int rk_SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(krb5_context contextp, int *socks,
	    unsigned int num_socks, int this_sock)
{
    int e;
    size_t i;
    struct sockaddr_storage __ss;
    struct sockaddr *sa = (struct sockaddr *)&__ss;
    socklen_t sa_size = sizeof(__ss);
    krb5_socket_t s;
    pid_t pid;
    krb5_address addr;
    char buf[128];
    size_t buf_len;

    s = FUNC0(socks[this_sock], sa, &sa_size);
    if(FUNC8(s)) {
	FUNC6(contextp, rk_SOCK_ERRNO, "accept");
	return 1;
    }
    e = FUNC5(contextp, sa, &addr);
    if(e)
	FUNC6(contextp, e, "krb5_sockaddr2address");
    else {
	e = FUNC4 (&addr, buf, sizeof(buf),
				&buf_len);
	if(e)
	    FUNC6(contextp, e, "krb5_print_address");
	else
	    FUNC7(contextp, "connection from %s", buf);
	FUNC3(contextp, &addr);
    }

    pid = FUNC2();
    if(pid == 0) {
	for(i = 0; i < num_socks; i++)
	    FUNC9(socks[i]);
	FUNC1(s, STDIN_FILENO);
	FUNC1(s, STDOUT_FILENO);
	if(s != STDIN_FILENO && s != STDOUT_FILENO)
	    FUNC9(s);
	return 0;
    } else {
	FUNC9(s);
    }
    return 1;
}