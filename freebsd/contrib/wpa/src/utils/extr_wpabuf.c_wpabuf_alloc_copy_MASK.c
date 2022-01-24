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
 struct wpabuf* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,void const*,size_t) ; 

struct wpabuf * FUNC2(const void *data, size_t len)
{
	struct wpabuf *buf = FUNC0(len);
	if (buf)
		FUNC1(buf, data, len);
	return buf;
}