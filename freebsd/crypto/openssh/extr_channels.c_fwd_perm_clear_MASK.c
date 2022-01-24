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
struct permission {int /*<<< orphan*/  listen_path; int /*<<< orphan*/  listen_host; int /*<<< orphan*/  host_to_connect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct permission*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct permission *perm)
{
	FUNC1(perm->host_to_connect);
	FUNC1(perm->listen_host);
	FUNC1(perm->listen_path);
	FUNC0(perm, sizeof(*perm));
}