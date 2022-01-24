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
typedef  int option_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  help_option 130 
#define  optional_option 129 
#define  required_option 128 

__attribute__((used)) static char const* FUNC1(option_type opt_type) {
    switch (opt_type) {
        case required_option:
            return "[required]";
        case optional_option:
            return "[optional]";
        case help_option:
            return "";
        default:
            FUNC0(0);
            return NULL;
    }
}