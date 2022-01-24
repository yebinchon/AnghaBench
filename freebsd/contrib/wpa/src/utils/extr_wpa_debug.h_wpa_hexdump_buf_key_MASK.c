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
 int /*<<< orphan*/  FUNC0 (int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf const*) ; 

__attribute__((used)) static inline void FUNC3(int level, const char *title,
				       const struct wpabuf *buf)
{
	FUNC0(level, title, buf ? FUNC1(buf) : NULL,
			buf ? FUNC2(buf) : 0);
}