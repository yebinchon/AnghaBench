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
typedef  int /*<<< orphan*/  wc ;
typedef  int uint8_t ;
struct auth_zone {int dummy; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 int LDNS_MAX_DOMAINLEN ; 
 struct auth_data* FUNC0 (struct auth_zone*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,size_t) ; 

__attribute__((used)) static struct auth_data*
FUNC2(struct auth_zone* z, uint8_t* nm, size_t nmlen)
{
	uint8_t wc[LDNS_MAX_DOMAINLEN];
	if(nmlen+2 > sizeof(wc))
		return NULL; /* result would be too long */
	wc[0] = 1; /* length of wildcard label */
	wc[1] = (uint8_t)'*'; /* wildcard label */
	FUNC1(wc+2, nm, nmlen);
	return FUNC0(z, wc, nmlen+2);
}