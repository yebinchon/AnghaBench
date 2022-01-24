#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
union sockunion {int su_family; int /*<<< orphan*/  su_port; int /*<<< orphan*/  su_len; TYPE_2__ su_sin6; TYPE_1__ su_sin; } ;
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  hname ;
struct TYPE_8__ {int /*<<< orphan*/  su_len; } ;
struct TYPE_7__ {char* pw_name; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int CHAR_BIT ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 size_t TYPE_A ; 
 size_t TYPE_E ; 
 size_t TYPE_L ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ askpasswd ; 
 int bytesize ; 
 int data ; 
 union sockunion data_dest ; 
 scalar_t__ epsvall ; 
 size_t form ; 
 char** formnames ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ guest ; 
 TYPE_4__ his_addr ; 
 scalar_t__ hostinfo ; 
 int /*<<< orphan*/  hostname ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ logged_in ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 size_t mode ; 
 char** modenames ; 
 union sockunion pasv_addr ; 
 int pdata ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 TYPE_3__* pw ; 
 char* remotehost ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 size_t stru ; 
 char** strunames ; 
 size_t type ; 
 char** typenames ; 
 scalar_t__ usedefault ; 
 char* version ; 

void
FUNC7(void)
{
	union sockunion *su;
	u_char *a, *p;
	char hname[NI_MAXHOST];
	int ispassive;

	if (hostinfo) {
		FUNC3(211, "%s FTP server status:", hostname);
		FUNC4("     %s\r\n", version);
	} else
		FUNC3(211, "FTP server status:");
	FUNC4("     Connected to %s", remotehost);
	if (!FUNC1((struct sockaddr *)&his_addr, his_addr.su_len,
			 hname, sizeof(hname) - 1, NULL, 0, NI_NUMERICHOST)) {
		hname[sizeof(hname) - 1] = 0;
		if (FUNC6(hname, remotehost) != 0)
			FUNC4(" (%s)", hname);
	}
	FUNC4("\r\n");
	if (logged_in) {
		if (guest)
			FUNC4("     Logged in anonymously\r\n");
		else
			FUNC4("     Logged in as %s\r\n", pw->pw_name);
	} else if (askpasswd)
		FUNC4("     Waiting for password\r\n");
	else
		FUNC4("     Waiting for user name\r\n");
	FUNC4("     TYPE: %s", typenames[type]);
	if (type == TYPE_A || type == TYPE_E)
		FUNC4(", FORM: %s", formnames[form]);
	if (type == TYPE_L)
#if CHAR_BIT == 8
		printf(" %d", CHAR_BIT);
#else
		FUNC4(" %d", bytesize);	/* need definition! */
#endif
	FUNC4("; STRUcture: %s; transfer MODE: %s\r\n",
	    strunames[stru], modenames[mode]);
	if (data != -1)
		FUNC4("     Data connection open\r\n");
	else if (pdata != -1) {
		ispassive = 1;
		su = &pasv_addr;
		goto printaddr;
	} else if (usedefault == 0) {
		ispassive = 0;
		su = &data_dest;
printaddr:
#define UC(b) (((int) b) & 0xff)
		if (epsvall) {
			FUNC4("     EPSV only mode (EPSV ALL)\r\n");
			goto epsvonly;
		}

		/* PORT/PASV */
		if (su->su_family == AF_INET) {
			a = (u_char *) &su->su_sin.sin_addr;
			p = (u_char *) &su->su_sin.sin_port;
			FUNC4("     %s (%d,%d,%d,%d,%d,%d)\r\n",
				ispassive ? "PASV" : "PORT",
				UC(a[0]), UC(a[1]), UC(a[2]), UC(a[3]),
				UC(p[0]), UC(p[1]));
		}

		/* LPRT/LPSV */
	    {
		int alen, af, i;

		switch (su->su_family) {
		case AF_INET:
			a = (u_char *) &su->su_sin.sin_addr;
			p = (u_char *) &su->su_sin.sin_port;
			alen = sizeof(su->su_sin.sin_addr);
			af = 4;
			break;
		case AF_INET6:
			a = (u_char *) &su->su_sin6.sin6_addr;
			p = (u_char *) &su->su_sin6.sin6_port;
			alen = sizeof(su->su_sin6.sin6_addr);
			af = 6;
			break;
		default:
			af = 0;
			break;
		}
		if (af) {
			FUNC4("     %s (%d,%d,", ispassive ? "LPSV" : "LPRT",
				af, alen);
			for (i = 0; i < alen; i++)
				FUNC4("%d,", UC(a[i]));
			FUNC4("%d,%d,%d)\r\n", 2, UC(p[0]), UC(p[1]));
		}
	    }

epsvonly:;
		/* EPRT/EPSV */
	    {
		int af;

		switch (su->su_family) {
		case AF_INET:
			af = 1;
			break;
		case AF_INET6:
			af = 2;
			break;
		default:
			af = 0;
			break;
		}
		if (af) {
			union sockunion tmp;

			tmp = *su;
			if (tmp.su_family == AF_INET6)
				tmp.su_sin6.sin6_scope_id = 0;
			if (!FUNC1((struct sockaddr *)&tmp, tmp.su_len,
					hname, sizeof(hname) - 1, NULL, 0,
					NI_NUMERICHOST)) {
				hname[sizeof(hname) - 1] = 0;
				FUNC4("     %s |%d|%s|%d|\r\n",
					ispassive ? "EPSV" : "EPRT",
					af, hname, FUNC2(tmp.su_port));
			}
		}
	    }
#undef UC
	} else
		FUNC4("     No data connection\r\n");
	FUNC5(211, "End of status.");
}