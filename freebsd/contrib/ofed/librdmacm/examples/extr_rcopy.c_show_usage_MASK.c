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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(char *program)
{
	FUNC1("usage 1: %s [options]\n", program);
	FUNC1("\t     starts the server application\n");
	FUNC1("\t[-p  port_number]\n");
	FUNC1("usage 2: %s source server[:destination] [options]\n", program);
	FUNC1("\t     source - file name and path\n");
	FUNC1("\t     server - name or address\n");
	FUNC1("\t     destination - file name and path\n");
	FUNC1("\t[-p  port_number]\n");
	FUNC0(1);
}