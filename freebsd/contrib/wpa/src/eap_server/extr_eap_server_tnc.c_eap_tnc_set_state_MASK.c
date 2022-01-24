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
struct eap_tnc_data {int state; } ;
typedef  enum eap_tnc_state { ____Placeholder_eap_tnc_state } eap_tnc_state ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct eap_tnc_data *data,
			      enum eap_tnc_state new_state)
{
	FUNC1(MSG_DEBUG, "EAP-TNC: %s -> %s",
		   FUNC0(data->state),
		   FUNC0(new_state));
	data->state = new_state;
}