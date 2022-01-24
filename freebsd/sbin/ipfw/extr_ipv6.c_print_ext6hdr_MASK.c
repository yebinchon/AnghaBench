#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct buf_pr {int dummy; } ;
struct TYPE_3__ {int arg1; } ;
typedef  TYPE_1__ ipfw_insn ;

/* Variables and functions */
 int EXT_AH ; 
 int EXT_DSTOPTS ; 
 int EXT_ESP ; 
 int EXT_FRAGMENT ; 
 int EXT_HOPOPTS ; 
 int EXT_ROUTING ; 
 int EXT_RTHDR0 ; 
 int EXT_RTHDR2 ; 
 int /*<<< orphan*/  FUNC0 (struct buf_pr*,char*,...) ; 

void
FUNC1(struct buf_pr *bp, ipfw_insn *cmd )
{
	char sep = ' ';

	FUNC0(bp, " extension header:");
	if (cmd->arg1 & EXT_FRAGMENT) {
		FUNC0(bp, "%cfragmentation", sep);
		sep = ',';
	}
	if (cmd->arg1 & EXT_HOPOPTS) {
		FUNC0(bp, "%chop options", sep);
		sep = ',';
	}
	if (cmd->arg1 & EXT_ROUTING) {
		FUNC0(bp, "%crouting options", sep);
		sep = ',';
	}
	if (cmd->arg1 & EXT_RTHDR0) {
		FUNC0(bp, "%crthdr0", sep);
		sep = ',';
	}
	if (cmd->arg1 & EXT_RTHDR2) {
		FUNC0(bp, "%crthdr2", sep);
		sep = ',';
	}
	if (cmd->arg1 & EXT_DSTOPTS) {
		FUNC0(bp, "%cdestination options", sep);
		sep = ',';
	}
	if (cmd->arg1 & EXT_AH) {
		FUNC0(bp, "%cauthentication header", sep);
		sep = ',';
	}
	if (cmd->arg1 & EXT_ESP) {
		FUNC0(bp, "%cencapsulated security payload", sep);
	}
}