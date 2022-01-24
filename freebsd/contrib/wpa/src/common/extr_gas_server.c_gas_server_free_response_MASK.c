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
struct gas_server_response {int /*<<< orphan*/  resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gas_server_response*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gas_server_response_timeout ; 
 int /*<<< orphan*/  FUNC1 (struct gas_server_response*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct gas_server_response*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gas_server_response *response)
{
	if (!response)
		return;
	FUNC2(MSG_DEBUG, "DPP: Free GAS response @%p", response);
	FUNC0(gas_server_response_timeout, response, NULL);
	FUNC3(response->resp);
	FUNC1(response);
}