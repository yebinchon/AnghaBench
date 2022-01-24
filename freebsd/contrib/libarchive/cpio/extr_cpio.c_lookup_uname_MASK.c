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
typedef  scalar_t__ uid_t ;
struct cpio {int /*<<< orphan*/  uname_cache; } ;
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
 char const* FUNC0 (struct cpio*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lookup_uname_helper ; 

__attribute__((used)) static const char *
FUNC1(struct cpio *cpio, uid_t uid)
{
	return (FUNC0(cpio, &cpio->uname_cache,
		    &lookup_uname_helper, (id_t)uid));
}