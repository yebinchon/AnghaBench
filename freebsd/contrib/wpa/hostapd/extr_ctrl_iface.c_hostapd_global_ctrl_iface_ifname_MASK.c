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
struct hostapd_data {int dummy; } ;
struct hapd_interfaces {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int FUNC0 (struct hostapd_data*,char*,char*,int,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 struct hostapd_data* FUNC1 (struct hapd_interfaces*,char const*) ; 
 int FUNC2 (char*,int,char*) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct hapd_interfaces *interfaces,
					    const char *ifname,
					    char *buf, char *reply,
					    int reply_size,
					    struct sockaddr_storage *from,
					    socklen_t fromlen)
{
	struct hostapd_data *hapd;

	hapd = FUNC1(interfaces, ifname);
	if (hapd == NULL) {
		int res;

		res = FUNC2(reply, reply_size, "FAIL-NO-IFNAME-MATCH\n");
		if (FUNC3(reply_size, res))
			return -1;
		return res;
	}

	return FUNC0(hapd, buf, reply,reply_size,
						  from, fromlen);
}