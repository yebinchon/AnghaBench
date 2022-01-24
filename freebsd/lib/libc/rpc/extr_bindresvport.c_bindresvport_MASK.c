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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct sockaddr*) ; 

int
FUNC1(int sd, struct sockaddr_in *sin)
{
	return FUNC0(sd, (struct sockaddr *)sin);
}