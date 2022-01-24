#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ggd_connection {int c_sendfd; int c_recvfd; int /*<<< orphan*/  c_path; } ;
struct g_gate_cinit {int gc_flags; } ;
typedef  int /*<<< orphan*/  in_addr_t ;

/* Variables and functions */
 int EEXIST ; 
 int GGATE_FLAG_SEND ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ggd_connection *conn, struct g_gate_cinit *cinit,
    struct sockaddr *s, int sfd)
{
	in_addr_t ip;

	ip = FUNC1(((struct sockaddr_in *)(void *)s)->sin_addr.s_addr);
	if ((cinit->gc_flags & GGATE_FLAG_SEND) != 0) {
		if (conn->c_sendfd != -1) {
			FUNC0(LOG_WARNING,
			    "Send socket already exists [%s, %s].", FUNC2(ip),
			    conn->c_path);
			return (EEXIST);
		}
		conn->c_sendfd = sfd;
	} else {
		if (conn->c_recvfd != -1) {
			FUNC0(LOG_WARNING,
			    "Receive socket already exists [%s, %s].",
			    FUNC2(ip), conn->c_path);
			return (EEXIST);
		}
		conn->c_recvfd = sfd;
	}
	FUNC0(LOG_DEBUG, "Connection added [%s, %s].", FUNC2(ip),
	    conn->c_path);
	return (0);
}