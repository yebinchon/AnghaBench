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
typedef  int /*<<< orphan*/  TNC_RetryReason ;
typedef  int /*<<< orphan*/  TNC_Result ;
typedef  int /*<<< orphan*/  TNC_IMVID ;
typedef  int /*<<< orphan*/  TNC_ConnectionID ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TNC_RESULT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static TNC_Result FUNC1(
	TNC_IMVID imvID,
	TNC_ConnectionID connectionID,
	TNC_RetryReason reason)
{
	FUNC0(MSG_DEBUG, "TNC: TNC_TNCS_RequestHandshakeRetry");
	/* TODO */
	return TNC_RESULT_SUCCESS;
}