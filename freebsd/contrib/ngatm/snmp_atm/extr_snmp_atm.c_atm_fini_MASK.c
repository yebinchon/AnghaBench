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
struct atmif_priv {int dummy; } ;

/* Variables and functions */
 struct atmif_priv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct atmif_priv*) ; 
 int /*<<< orphan*/  atmif_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  module ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_atm ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct atmif_priv *aif;

	while ((aif = FUNC0(&atmif_list)) != NULL)
		FUNC1(aif);

	FUNC2(module);
	FUNC3(reg_atm);

	return (0);
}