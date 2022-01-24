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
struct ssh {char* log_preamble; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*) ; 

void
FUNC3(struct ssh *ssh, char *s, size_t l)
{
	FUNC0(s, l, "%.200s%s%s port %d",
	    ssh->log_preamble ? ssh->log_preamble : "",
	    ssh->log_preamble ? " " : "",
	    FUNC1(ssh), FUNC2(ssh));
}