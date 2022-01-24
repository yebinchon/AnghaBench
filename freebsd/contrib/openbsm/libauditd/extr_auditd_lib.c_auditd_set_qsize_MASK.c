#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int aq_hiwater; } ;
typedef  TYPE_1__ au_qctrl_t ;
typedef  int /*<<< orphan*/  au_qctrl ;

/* Variables and functions */
 int ADE_AUDITON ; 
 int ADE_NOERR ; 
 int ADE_PARSE ; 
 int USE_DEFAULT_QSZ ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int*) ; 

int
FUNC3(void)
{
	int qsz;
	au_qctrl_t au_qctrl;

	/*
	 * Set trail rotation size.
	 */
	if (FUNC2(&qsz) != 0)
		return (ADE_PARSE);

	if (FUNC0(&au_qctrl, sizeof(au_qctrl)) != 0)
		return (ADE_AUDITON);
	if (qsz != USE_DEFAULT_QSZ)
		au_qctrl.aq_hiwater = qsz;
	if (FUNC1(&au_qctrl, sizeof(au_qctrl)) != 0)
		return (ADE_AUDITON);

	return (ADE_NOERR);
}