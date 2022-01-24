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
 int /*<<< orphan*/  FUNC0 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,struct wpabuf const*) ; 
 scalar_t__ FUNC2 (struct wpabuf**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wpabuf **dst, const struct wpabuf *src)
{
	if (!src)
		return 0;
	if (FUNC2(dst, FUNC0(src)) != 0)
		return -1;
	FUNC1(*dst, src);
	return 0;
}