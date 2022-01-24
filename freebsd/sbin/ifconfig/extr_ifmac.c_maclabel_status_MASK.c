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
struct TYPE_2__ {void* ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; int /*<<< orphan*/  ifr_name; } ;
typedef  scalar_t__ mac_t ;
typedef  int /*<<< orphan*/  ifr ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIFMAC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__*) ; 
 int FUNC4 (scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC5 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(int s)
{
	struct ifreq ifr;
	mac_t label;
	char *label_text;

	FUNC5(&ifr, 0, sizeof(ifr));
	FUNC7(ifr.ifr_name, name, sizeof(ifr.ifr_name));

	if (FUNC3(&label) == -1)
		return;
	ifr.ifr_ifru.ifru_data = (void *)label;
	if (FUNC1(s, SIOCGIFMAC, &ifr) == -1)
		goto mac_free;

	
	if (FUNC4(label, &label_text) == -1)
		goto mac_free;

	if (FUNC8(label_text) != 0)
		FUNC6("\tmaclabel %s\n", label_text);
	FUNC0(label_text);

mac_free:
	FUNC2(label);
}