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
struct dumperinfo {int dummy; } ;

/* Variables and functions */
 scalar_t__ TEXTDUMP_BLOCKSIZE ; 
 int /*<<< orphan*/  textdump_offset ; 
 int FUNC0 (struct dumperinfo*,int /*<<< orphan*/ ,char*) ; 

int
FUNC1(struct dumperinfo *di, char *buffer)
{
	int error;

	error = FUNC0(di, textdump_offset, buffer);
	textdump_offset -= TEXTDUMP_BLOCKSIZE;
	return (error);
}