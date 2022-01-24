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
struct data_key {int user; struct data_key* key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct data_key*) ; 

__attribute__((used)) static void FUNC1(struct data_key *pkey)
{
	if (!pkey)
		return;

	pkey->user--;
	if (pkey->user > 1)
		return;

	FUNC0(pkey->key);
	FUNC0(pkey);
}