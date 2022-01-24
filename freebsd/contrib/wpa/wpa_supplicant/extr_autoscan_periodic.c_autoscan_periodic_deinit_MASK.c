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
struct autoscan_periodic_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autoscan_periodic_data*) ; 

__attribute__((used)) static void FUNC1(void *priv)
{
	struct autoscan_periodic_data *data = priv;

	FUNC0(data);
}