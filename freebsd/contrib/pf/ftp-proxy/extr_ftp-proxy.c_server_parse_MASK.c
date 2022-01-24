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
struct session {scalar_t__ cmd; scalar_t__ port; } ;

/* Variables and functions */
 scalar_t__ CMD_EPSV ; 
 scalar_t__ CMD_NONE ; 
 scalar_t__ CMD_PASV ; 
 int FUNC0 (struct session*) ; 
 char* linebuf ; 
 int linelen ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

int
FUNC2(struct session *s)
{
	if (s->cmd == CMD_NONE || linelen < 4 || linebuf[0] != '2')
		goto out;

	if ((s->cmd == CMD_PASV && FUNC1("227 ", linebuf, 4) == 0) ||
	    (s->cmd == CMD_EPSV && FUNC1("229 ", linebuf, 4) == 0))
		return (FUNC0(s));

 out:
	s->cmd = CMD_NONE;
	s->port = 0;

	return (1);
}