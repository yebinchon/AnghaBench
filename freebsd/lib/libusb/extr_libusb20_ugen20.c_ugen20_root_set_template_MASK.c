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
struct libusb20_backend {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_SET_TEMPLATE ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC2(struct libusb20_backend *pbe, int temp)
{
	return (FUNC1(FUNC0(USB_SET_TEMPLATE), &temp));
}