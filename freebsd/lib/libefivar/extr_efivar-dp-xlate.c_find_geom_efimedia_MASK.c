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
struct gprovider {int dummy; } ;
struct gmesh {int dummy; } ;

/* Variables and functions */
 struct gprovider* FUNC0 (struct gmesh*,char const*) ; 
 char* FUNC1 (struct gmesh*,struct gprovider*,char*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(struct gmesh *mesh, const char *dev)
{
	struct gprovider *pp;
	const char *efimedia;

	pp = FUNC0(mesh, dev);
	if (pp == NULL)
		return (NULL);
	efimedia = FUNC1(mesh, pp, "efimedia");
	if (efimedia == NULL)
		return (NULL);
	return FUNC2(efimedia);
}