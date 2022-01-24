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
struct receive_sa {int /*<<< orphan*/  list; int /*<<< orphan*/  an; int /*<<< orphan*/ * pkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct receive_sa*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct receive_sa *psa)
{
	FUNC1(psa->pkey);
	psa->pkey = NULL;
	FUNC3(MSG_DEBUG,
		   "KaY: Delete receive SA(an: %hhu) of SC",
		   psa->an);
	FUNC0(&psa->list);
	FUNC2(psa);
}