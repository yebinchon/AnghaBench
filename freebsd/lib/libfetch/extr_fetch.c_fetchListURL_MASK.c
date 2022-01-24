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
struct url_ent {int dummy; } ;
struct url {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct url*) ; 
 struct url_ent* FUNC1 (struct url*,char const*) ; 
 struct url* FUNC2 (char const*) ; 

struct url_ent *
FUNC3(const char *URL, const char *flags)
{
	struct url *u;
	struct url_ent *ue;

	if ((u = FUNC2(URL)) == NULL)
		return (NULL);

	ue = FUNC1(u, flags);

	FUNC0(u);
	return (ue);
}