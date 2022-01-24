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
struct wpabuf {int dummy; } ;
struct p2p_group_member {int /*<<< orphan*/ * client_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC3(struct wpabuf *ie, struct p2p_group_member *m)
{
	if (m->client_info == NULL)
		return;
	if (FUNC2(ie) < FUNC0(m->client_info) + 1)
		return;
	FUNC1(ie, m->client_info);
}