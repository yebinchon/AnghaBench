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
struct coresight_event {int dummy; } ;
struct coresight_device {int dummy; } ;

/* Variables and functions */
 struct coresight_device* FUNC0 (struct coresight_device*,struct coresight_event*) ; 

__attribute__((used)) static int
FUNC1(struct coresight_device *cs_dev,
    struct coresight_event *event)
{
	struct coresight_device *out;

	out = cs_dev;
	while (out != NULL)
		out = FUNC0(out, event);

	return (0);
}