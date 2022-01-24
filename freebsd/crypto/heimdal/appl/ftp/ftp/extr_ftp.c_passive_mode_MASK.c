#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  sa_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 scalar_t__ COMPLETE ; 
 int /*<<< orphan*/  IPTOS_THROUGHPUT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int SO_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int data ; 
 TYPE_1__* data_addr ; 
 int /*<<< orphan*/  hisctladdr ; 
 TYPE_3__* myctladdr ; 
 int options ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pasv ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int sendport ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13 (void)
{
    int port;

    data = FUNC6 (myctladdr->sa_family, SOCK_STREAM, 0);
    if (data < 0) {
	FUNC12 ("socket");
	return (1);
    }
    if (options & SO_DEBUG)
	FUNC9 (data);
    if (FUNC1 ("EPSV") != COMPLETE) {
	if (FUNC1 ("PASV") != COMPLETE) {
	    FUNC5 ("Passive mode refused.\n");
	    goto bad;
	}
    }

    /*
     * Parse the reply to EPSV or PASV
     */

    port = FUNC3 (pasv);
    if (port > 0) {
	data_addr->sa_family = myctladdr->sa_family;
	FUNC8 (data_addr,
				     FUNC7 (hisctladdr),
				     port);
    } else {
	if (FUNC4 ((struct sockaddr_in *)data_addr, pasv) < 0)
	    goto bad;
    }

    if (FUNC2 (data, data_addr, FUNC11 (data_addr)) < 0) {
	FUNC12 ("connect");
	goto bad;
    }
#ifdef IPTOS_THROUGHPUT
    socket_set_tos (data, IPTOS_THROUGHPUT);
#endif
    return (0);
bad:
    FUNC0 (data);
    data = -1;
    sendport = 1;
    return (1);
}