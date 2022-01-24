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
struct eap_sm {int dummy; } ;
struct eap_ikev2_data {int /*<<< orphan*/  ikev2; int /*<<< orphan*/  out_buf; int /*<<< orphan*/  in_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_ikev2_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm, void *priv)
{
	struct eap_ikev2_data *data = priv;
	FUNC2(data->in_buf);
	FUNC2(data->out_buf);
	FUNC1(&data->ikev2);
	FUNC0(data, sizeof(*data));
}