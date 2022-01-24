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
struct memory_packet_config {scalar_t__ fixed_p; int /*<<< orphan*/  size; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct memory_packet_config*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC2 (struct memory_packet_config *config)
{
  FUNC1 ("The %s is %ld. ", config->name, config->size);
  if (config->fixed_p)
    FUNC1 ("Packets are fixed at %ld bytes.\n",
		     FUNC0 (config));
  else
    FUNC1 ("Packets are limited to %ld bytes.\n",
		     FUNC0 (config));
}