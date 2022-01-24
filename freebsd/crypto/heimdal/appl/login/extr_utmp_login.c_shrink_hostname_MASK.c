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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
typedef  int /*<<< orphan*/  local_hostname ;

/* Variables and functions */
 int MaxHostNameLen ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 

void
FUNC9 (const char *hostname,
		 char *dst, size_t dst_sz)
{
    char local_hostname[MaxHostNameLen];
    char *ld, *hd;
    int ret;
    struct addrinfo *ai;

    if (FUNC7(hostname) < dst_sz) {
	FUNC6 (dst, hostname, dst_sz);
	return;
    }
    FUNC2 (local_hostname, sizeof(local_hostname));
    hd = FUNC4 (hostname, '.');
    ld = FUNC4 (local_hostname, '.');
    if (hd != NULL && ld != NULL && FUNC5(hd, ld) == 0
	&& hd - hostname < dst_sz) {
	FUNC6 (dst, hostname, dst_sz);
	dst[hd - hostname] = '\0';
	return;
    }

    ret = FUNC1 (hostname, NULL, NULL, &ai);
    if (ret) {
	FUNC8 (dst, hostname, dst_sz);
	return;
    }
    ret = FUNC3 (ai->ai_addr, ai->ai_addrlen,
		       dst, dst_sz,
		       NULL, 0,
		       NI_NUMERICHOST);
    FUNC0 (ai);
    if (ret) {
	FUNC8 (dst, hostname, dst_sz);
	return;
    }
}