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
struct TYPE_3__ {int /*<<< orphan*/  tm; int /*<<< orphan*/  t; int /*<<< orphan*/  channel; } ;
typedef  TYPE_1__ TTM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,int /*<<< orphan*/ *) ; 

void
FUNC3(
	unsigned char **buffpp,
	TTM *ttmp
	)
{
  ttmp->channel = FUNC0(buffpp);
  FUNC1(buffpp, &ttmp->t);
  FUNC2(buffpp, &ttmp->tm);
}