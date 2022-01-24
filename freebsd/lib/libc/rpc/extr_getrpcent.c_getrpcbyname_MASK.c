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
union key {char const* name; } ;
struct rpcent {int dummy; } ;

/* Variables and functions */
 struct rpcent* FUNC0 (int /*<<< orphan*/ ,union key) ; 
 int /*<<< orphan*/  wrap_getrpcbyname_r ; 

struct rpcent *
FUNC1(const char *name)
{
	union key key;

	key.name = name;

	return (FUNC0(wrap_getrpcbyname_r, key));
}