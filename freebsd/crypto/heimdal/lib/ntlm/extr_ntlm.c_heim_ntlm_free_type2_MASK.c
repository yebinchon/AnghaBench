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
struct ntlm_type2 {int /*<<< orphan*/  targetinfo; scalar_t__ targetname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ntlm_type2*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct ntlm_type2 *data)
{
    if (data->targetname)
	FUNC0(data->targetname);
    FUNC1(&data->targetinfo);
    FUNC2(data, 0, sizeof(*data));
}