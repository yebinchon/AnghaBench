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
struct hostkeys {int dummy; } ;
struct hostkey_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ HOST_FOUND ; 
 scalar_t__ FUNC0 (struct hostkeys*,int /*<<< orphan*/ *,int,struct hostkey_entry const**) ; 

int
FUNC1(struct hostkeys *hostkeys, int keytype,
    const struct hostkey_entry **found)
{
	return (FUNC0(hostkeys, NULL, keytype,
	    found) == HOST_FOUND);
}