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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,struct wpabuf const*) ; 

void FUNC3(struct wpabuf *buf, u16 type,
			  const struct wpabuf *data)
{
	FUNC0(buf, type, FUNC1(data));
	FUNC2(buf, data);
}