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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tftp_file ; 
 scalar_t__ tftp_in_use ; 
 int /*<<< orphan*/  udp_desc ; 
 scalar_t__ udp_in_use ; 

__attribute__((used)) static void
FUNC2 (char *buffer, int length)
{
  if (tftp_in_use)
    FUNC0 (buffer, 1, length, tftp_file);
  else
    FUNC1 (udp_in_use ? udp_desc : mips_desc, buffer, length);
}