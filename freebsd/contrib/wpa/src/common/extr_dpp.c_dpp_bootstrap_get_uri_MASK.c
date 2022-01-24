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
struct dpp_global {int dummy; } ;
struct dpp_bootstrap_info {char const* uri; } ;

/* Variables and functions */
 struct dpp_bootstrap_info* FUNC0 (struct dpp_global*,unsigned int) ; 

const char * FUNC1(struct dpp_global *dpp, unsigned int id)
{
	struct dpp_bootstrap_info *bi;

	bi = FUNC0(dpp, id);
	if (!bi)
		return NULL;
	return bi->uri;
}