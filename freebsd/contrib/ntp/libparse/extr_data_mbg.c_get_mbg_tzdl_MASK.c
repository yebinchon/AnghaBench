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
struct TYPE_3__ {scalar_t__* name; int /*<<< orphan*/  tm_off; int /*<<< orphan*/  tm_on; void* offs_dl; void* offs; } ;
typedef  TYPE_1__ TZDL ;

/* Variables and functions */
 void* FUNC0 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,char*) ; 

void
FUNC3(
	unsigned char **buffpp,
	TZDL *tzdlp
	)
{
  tzdlp->offs = FUNC0(buffpp);
  tzdlp->offs_dl = FUNC0(buffpp);
  FUNC1(buffpp, &tzdlp->tm_on);
  FUNC1(buffpp, &tzdlp->tm_off);
  FUNC2(buffpp, (char *)tzdlp->name[0]);
  FUNC2(buffpp, (char *)tzdlp->name[1]);
}