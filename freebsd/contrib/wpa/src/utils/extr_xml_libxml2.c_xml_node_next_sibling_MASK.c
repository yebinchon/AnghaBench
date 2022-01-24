#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xml_node_t ;
typedef  TYPE_1__* xmlNodePtr ;
struct xml_node_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ next; } ;

/* Variables and functions */

xml_node_t * FUNC0(struct xml_node_ctx *ctx,
				   xml_node_t *node)
{
	return (xml_node_t *) ((xmlNodePtr) node)->next;
}