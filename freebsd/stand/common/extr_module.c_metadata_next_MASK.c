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
struct file_metadata {int md_type; struct file_metadata* md_next; } ;

/* Variables and functions */

struct file_metadata *
FUNC0(struct file_metadata *md, int type)
{

	if (md == NULL)
		return (NULL);
	while((md = md->md_next) != NULL)
		if (md->md_type == type)
			break;
	return (md);
}