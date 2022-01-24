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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sbuf ;
typedef  TYPE_1__* res_state ;
typedef  int /*<<< orphan*/  hbuf ;
struct TYPE_3__ {unsigned int options; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 unsigned int RES_DEBUG ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (struct sockaddr const*,int,char*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  niflags ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC4(const res_state statp, FILE *file, const char *string, int error,
       const struct sockaddr *address, int alen)
{
	int save = errno;
	char hbuf[NI_MAXHOST];
	char sbuf[NI_MAXSERV];

	if ((statp->options & RES_DEBUG) != 0U) {
		if (FUNC1(address, alen, hbuf, sizeof(hbuf),
		    sbuf, sizeof(sbuf), niflags)) {
			FUNC3(hbuf, "?", sizeof(hbuf) - 1);
			hbuf[sizeof(hbuf) - 1] = '\0';
			FUNC3(sbuf, "?", sizeof(sbuf) - 1);
			sbuf[sizeof(sbuf) - 1] = '\0';
		}
		FUNC0(file, "res_send: %s ([%s].%s): %s\n",
			string, hbuf, sbuf, FUNC2(error));
	}
	errno = save;
}