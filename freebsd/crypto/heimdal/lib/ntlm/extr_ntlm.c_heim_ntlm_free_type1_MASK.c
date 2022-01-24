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
struct ntlm_type1 {scalar_t__ hostname; scalar_t__ domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ntlm_type1*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct ntlm_type1 *data)
{
    if (data->domain)
	FUNC0(data->domain);
    if (data->hostname)
	FUNC0(data->hostname);
    FUNC1(data, 0, sizeof(*data));
}