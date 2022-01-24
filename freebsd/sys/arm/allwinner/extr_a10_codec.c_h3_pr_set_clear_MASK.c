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
typedef  int u_int ;
struct a10codec_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct a10codec_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct a10codec_info*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct a10codec_info *sc, u_int addr, u_int set, u_int clr)
{
	u_int old, new;

	old = FUNC0(sc, addr);
	new = set | (old & ~clr);
	FUNC1(sc, addr, new);
}