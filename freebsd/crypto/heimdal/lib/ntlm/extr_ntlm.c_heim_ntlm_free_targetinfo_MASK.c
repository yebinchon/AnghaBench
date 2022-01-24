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
struct ntlm_targetinfo {int /*<<< orphan*/  dnstreename; int /*<<< orphan*/  dnsservername; int /*<<< orphan*/  dnsdomainname; int /*<<< orphan*/  domainname; int /*<<< orphan*/  servername; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ntlm_targetinfo*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct ntlm_targetinfo *ti)
{
    FUNC0(ti->servername);
    FUNC0(ti->domainname);
    FUNC0(ti->dnsdomainname);
    FUNC0(ti->dnsservername);
    FUNC0(ti->dnstreename);
    FUNC1(ti, 0, sizeof(*ti));
}