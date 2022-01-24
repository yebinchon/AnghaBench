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
struct ieee802_1x_cp_sm {scalar_t__ connect; scalar_t__ chgd_server; } ;

/* Variables and functions */
 scalar_t__ SECURE ; 
 scalar_t__ FUNC0 (struct ieee802_1x_cp_sm*) ; 

__attribute__((used)) static int FUNC1(struct ieee802_1x_cp_sm *sm)
{
	return sm->connect != SECURE || sm->chgd_server || FUNC0(sm);
}