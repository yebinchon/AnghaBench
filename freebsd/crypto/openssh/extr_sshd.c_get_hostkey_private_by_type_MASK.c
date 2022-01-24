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
struct sshkey {int dummy; } ;
struct ssh {int dummy; } ;

/* Variables and functions */
 struct sshkey* FUNC0 (int,int,int,struct ssh*) ; 

struct sshkey *
FUNC1(int type, int nid, struct ssh *ssh)
{
	return FUNC0(type, nid, 1, ssh);
}