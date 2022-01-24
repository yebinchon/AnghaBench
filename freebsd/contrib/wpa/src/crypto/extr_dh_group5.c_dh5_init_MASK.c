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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,struct wpabuf**) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 

void * FUNC3(struct wpabuf **priv, struct wpabuf **publ)
{
	FUNC2(*publ);
	*publ = FUNC1(FUNC0(5), priv);
	if (*publ == NULL)
		return NULL;
	return (void *) 1;
}