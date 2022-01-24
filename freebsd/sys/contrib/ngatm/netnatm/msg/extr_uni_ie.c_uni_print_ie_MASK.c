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
typedef  union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int dummy; } ;
typedef  enum uni_ietype { ____Placeholder_uni_ietype } uni_ietype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,union uni_ieall const*,struct unicx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,struct unicx*) ; 

void
FUNC2(char *buf, size_t size, enum uni_ietype code,
    const union uni_ieall *ie, struct unicx *cx)
{
	FUNC1(buf, size, cx);
	FUNC0(code, ie, cx);
}