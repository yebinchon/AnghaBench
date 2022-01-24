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
struct tnc_if_imc {scalar_t__ (* NotifyConnectionChange ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  connectionID; int /*<<< orphan*/  imcID; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ TNC_Result ;
typedef  scalar_t__ TNC_ConnectionState ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ TNC_RESULT_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 

__attribute__((used)) static int FUNC2(struct tnc_if_imc *imc,
					     TNC_ConnectionState state)
{
	TNC_Result res;

	if (imc->NotifyConnectionChange == NULL)
		return 0;

	FUNC1(MSG_DEBUG, "TNC: Calling TNC_IMC_NotifyConnectionChange(%d)"
		   " for IMC '%s'", (int) state, imc->name);
	res = imc->NotifyConnectionChange(imc->imcID, imc->connectionID,
					  state);
	FUNC1(MSG_DEBUG, "TNC: TNC_IMC_NotifyConnectionChange: %lu",
		   (unsigned long) res);

	return res == TNC_RESULT_SUCCESS ? 0 : -1;
}