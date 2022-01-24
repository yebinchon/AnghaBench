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
struct p2p_noa_desc {int /*<<< orphan*/  start_time; int /*<<< orphan*/  interval; int /*<<< orphan*/  duration; int /*<<< orphan*/  count_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wpabuf *buf, struct p2p_noa_desc *desc)
{
	if (desc == NULL)
		return;

	FUNC1(buf, desc->count_type);
	FUNC0(buf, desc->duration);
	FUNC0(buf, desc->interval);
	FUNC0(buf, desc->start_time);
}