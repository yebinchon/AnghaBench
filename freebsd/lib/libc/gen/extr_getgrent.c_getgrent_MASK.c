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
union key {scalar_t__ gid; } ;
struct group {int dummy; } ;

/* Variables and functions */
 struct group* FUNC0 (int /*<<< orphan*/ ,union key) ; 
 int /*<<< orphan*/  wrap_getgrent_r ; 

struct group *
FUNC1(void)
{
	union key key;

	key.gid = 0; /* not used */
	return (FUNC0(wrap_getgrent_r, key));
}