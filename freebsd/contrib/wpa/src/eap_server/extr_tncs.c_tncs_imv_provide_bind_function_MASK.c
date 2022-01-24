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
struct tnc_if_imv {unsigned long name; scalar_t__ (* ProvideBindFunction ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  imvID; } ;
typedef  scalar_t__ TNC_Result ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ TNC_RESULT_SUCCESS ; 
 int /*<<< orphan*/  TNC_TNCS_BindFunction ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct tnc_if_imv *imv)
{
	TNC_Result res;

	FUNC1(MSG_DEBUG, "TNC: Calling TNC_IMV_ProvideBindFunction for "
		   "IMV '%s'", imv->name);
	res = imv->ProvideBindFunction(imv->imvID, TNC_TNCS_BindFunction);
	FUNC1(MSG_DEBUG, "TNC: TNC_IMV_ProvideBindFunction: res=%lu",
		   (unsigned long) res);

	return res == TNC_RESULT_SUCCESS ? 0 : -1;
}