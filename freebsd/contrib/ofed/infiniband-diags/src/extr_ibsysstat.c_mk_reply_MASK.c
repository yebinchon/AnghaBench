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
struct TYPE_2__ {char* model; char* mhz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  IB_CPUINFO_ATTR 130 
#define  IB_HOSTINFO_ATTR 129 
#define  IB_PING_ATTR 128 
 TYPE_1__* cpus ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int host_ncpu ; 
 int FUNC4 (char*,int,char*,...) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(int attr, void *data, int sz)
{
	char *s = data;
	int n, i, ret = 0;

	switch (attr) {
	case IB_PING_ATTR:
		break;		/* nothing to do here, just reply */
	case IB_HOSTINFO_ATTR:
		if (FUNC3(s, sz) < 0)
			FUNC4(s, sz, "?hostname?");
		s[sz - 1] = 0;
		if ((n = FUNC5(s)) >= sz - 1) {
			ret = sz;
			break;
		}
		s[n] = '.';
		s += n + 1;
		sz -= n + 1;
		ret += n + 1;
		if (FUNC2(s, sz) < 0)
			FUNC4(s, sz, "?domainname?");
		if ((n = FUNC5(s)) == 0)
			s[-1] = 0;	/* no domain */
		else
			ret += n;
		break;
	case IB_CPUINFO_ATTR:
		s[0] = '\0';
		for (i = 0; i < host_ncpu && sz > 0; i++) {
			n = FUNC4(s, sz, "cpu %d: model %s MHZ %s\n",
				     i, cpus[i].model, cpus[i].mhz);
			if (n >= sz) {
				FUNC1("cpuinfo truncated");
				ret = sz;
				break;
			}
			sz -= n;
			s += n;
			ret += n;
		}
		ret++;
		break;
	default:
		FUNC0("unknown attr %d", attr);
	}
	return ret;
}