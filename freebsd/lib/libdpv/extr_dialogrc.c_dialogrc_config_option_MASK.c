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
struct figpar_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dialogrc_config ; 
 struct figpar_config* FUNC0 (int /*<<< orphan*/ ,char const*) ; 

struct figpar_config *
FUNC1(const char *directive)
{
	return (FUNC0(dialogrc_config, directive));
}