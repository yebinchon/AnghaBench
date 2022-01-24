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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,char const*,int /*<<< orphan*/ ) ; 

void FUNC3(struct wpabuf *buf, const char *tag, const char *data)
{
	FUNC1(buf, "<%s>", tag);
	FUNC2(buf, data, FUNC0(data));
	FUNC1(buf, "</%s>\n", tag);
}