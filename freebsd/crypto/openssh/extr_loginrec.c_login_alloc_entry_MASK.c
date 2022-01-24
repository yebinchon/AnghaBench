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
struct logininfo {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct logininfo*,int /*<<< orphan*/ ,char const*,char const*,char const*) ; 
 struct logininfo* FUNC1 (int) ; 

struct
logininfo *FUNC2(pid_t pid, const char *username,
    const char *hostname, const char *line)
{
	struct logininfo *newli;

	newli = FUNC1(sizeof(*newli));
	FUNC0(newli, pid, username, hostname, line);
	return (newli);
}