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
#define  DONE 132 
#define  FAIL 131 
#define  PROC_MSG 130 
#define  WAIT_FRAG_ACK 129 
#define  WAIT_START 128 

__attribute__((used)) static const char * FUNC0(int state)
{
	switch (state) {
	case WAIT_START:
		return "WAIT_START";
	case PROC_MSG:
		return "PROC_MSG";
	case WAIT_FRAG_ACK:
		return "WAIT_FRAG_ACK";
	case DONE:
		return "DONE";
	case FAIL:
		return "FAIL";
	default:
		return "?";
	}
}