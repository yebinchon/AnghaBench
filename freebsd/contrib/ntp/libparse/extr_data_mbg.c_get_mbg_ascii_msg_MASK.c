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
struct TYPE_3__ {int /*<<< orphan*/  s; int /*<<< orphan*/  valid; scalar_t__ csum; } ;
typedef  scalar_t__ CSUM ;
typedef  TYPE_1__ ASCII_MSG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**) ; 
 scalar_t__ FUNC1 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 

void
FUNC3(
	unsigned char **bufpp,
	ASCII_MSG *ascii_msgp
	)
{
  ascii_msgp->csum  = (CSUM) FUNC1(bufpp);
  ascii_msgp->valid = FUNC0(bufpp);
  FUNC2(ascii_msgp->s, *bufpp, sizeof(ascii_msgp->s));
  *bufpp += sizeof(ascii_msgp->s);
}