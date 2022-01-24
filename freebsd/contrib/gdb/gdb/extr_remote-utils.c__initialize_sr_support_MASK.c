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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_obscure ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  sr_com ; 
 TYPE_1__ sr_settings ; 
 int /*<<< orphan*/  var_filename ; 

void
FUNC3 (void)
{
/* FIXME-now: if target is open... */
  FUNC2 (FUNC1 ("remotedevice", no_class,
				  var_filename, (char *) &sr_settings.device,
				  "Set device for remote serial I/O.\n\
This device is used as the serial port when debugging using remote\n\
targets.", &setlist),
		     &showlist);

  FUNC0 ("remote <command>", class_obscure, sr_com,
	   "Send a command to the remote monitor.");

}