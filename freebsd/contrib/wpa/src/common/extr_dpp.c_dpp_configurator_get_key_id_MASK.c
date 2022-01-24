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
struct dpp_configurator {int dummy; } ;

/* Variables and functions */
 struct dpp_configurator* FUNC0 (struct dpp_global*,unsigned int) ; 
 int FUNC1 (struct dpp_configurator*,char*,size_t) ; 

int FUNC2(struct dpp_global *dpp, unsigned int id,
				char *buf, size_t buflen)
{
	struct dpp_configurator *conf;

	conf = FUNC0(dpp, id);
	if (!conf)
		return -1;

	return FUNC1(conf, buf, buflen);
}