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
struct eap_sim_db_data {int sock; int /*<<< orphan*/ * local_sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct eap_sim_db_data *data)
{
	if (data->sock >= 0) {
		FUNC1(data->sock);
		FUNC0(data->sock);
		data->sock = -1;
	}
	if (data->local_sock) {
		FUNC3(data->local_sock);
		FUNC2(data->local_sock);
		data->local_sock = NULL;
	}
}