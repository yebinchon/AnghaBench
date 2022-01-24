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
struct option {char* opt_usage; struct option* next; } ;
typedef  int /*<<< orphan*/  options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 struct option* opts ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	char options[1024];
	struct option *p;

	/* XXX not right but close enough for now */
	options[0] = '\0';
	for (p = opts; p != NULL; p = p->next) {
		FUNC2(options, p->opt_usage, sizeof(options));
		FUNC2(options, " ", sizeof(options));
	}

	FUNC1(stderr,
	"usage: ifconfig [-f type:format] %sinterface address_family\n"
	"                [address [dest_address]] [parameters]\n"
	"       ifconfig interface create\n"
	"       ifconfig -a %s[-d] [-m] [-u] [-v] [address_family]\n"
	"       ifconfig -l [-d] [-u] [address_family]\n"
	"       ifconfig %s[-d] [-m] [-u] [-v]\n",
		options, options, options);
	FUNC0(1);
}