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
struct TYPE_2__ {char* pw_name; } ;
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ftpd_timeout ; 
 scalar_t__ logging ; 
 TYPE_1__* pw ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RETSIGTYPE
FUNC4(int signo)
{

	FUNC2(421,
	    "Timeout (%d seconds): closing control connection.",
	      ftpd_timeout);
	if (logging)
		FUNC3(LOG_INFO, "User %s timed out after %d seconds",
		    (pw ? pw -> pw_name : "unknown"), ftpd_timeout);
	FUNC1(1);
	FUNC0(0);
}