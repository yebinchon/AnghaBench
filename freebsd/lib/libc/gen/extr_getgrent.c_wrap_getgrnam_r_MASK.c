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
union key {int /*<<< orphan*/  name; } ;
struct group {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct group*,char*,size_t,struct group**) ; 

__attribute__((used)) static int
FUNC1(union key key, struct group *grp, char *buffer, size_t bufsize,
    struct group **res)
{
	return (FUNC0(key.name, grp, buffer, bufsize, res));
}