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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int remote_timeout ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ tftp_in_use ; 

__attribute__((used)) static void
FUNC3 (char *entry_address, int final)
{
  char hexnumber[9];		/* includes '\0' space */
  FUNC1 (entry_address, tftp_in_use ? 15 : remote_timeout);
  FUNC2 (hexnumber, "%x", final);
  FUNC0 (hexnumber);
  FUNC0 ("\r\n");
}