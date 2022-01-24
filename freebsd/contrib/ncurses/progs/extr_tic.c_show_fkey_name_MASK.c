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
struct TYPE_3__ {scalar_t__ keycode; char* name; } ;
typedef  TYPE_1__ NAME_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(NAME_VALUE * data)
{
    if (data->keycode > 0) {
	FUNC0(stderr, " %s", FUNC1(data->keycode));
	FUNC0(stderr, " (capability \"%s\")", data->name);
    } else {
	FUNC0(stderr, " capability \"%s\"", data->name);
    }
}