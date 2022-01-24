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
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int verbosity ; 

void FUNC3(enum verbosity_value level, const char* msg, sldns_buffer* buf)
{
	if(verbosity < level)
		return;
	FUNC0(level, msg, FUNC1(buf), FUNC2(buf));
}