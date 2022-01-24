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
struct eap_wsc_data {int /*<<< orphan*/  wps; int /*<<< orphan*/  out_buf; int /*<<< orphan*/  in_buf; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  eap_wsc_ext_reg_timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct eap_sm*,struct eap_wsc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_wsc_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct eap_sm *sm, void *priv)
{
	struct eap_wsc_data *data = priv;
	FUNC0(eap_wsc_ext_reg_timeout, sm, data);
	FUNC2(data->in_buf);
	FUNC2(data->out_buf);
	FUNC3(data->wps);
	FUNC1(data);
}