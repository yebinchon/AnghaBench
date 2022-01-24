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
struct libusb_ss_endpoint_companion_descriptor {int dummy; } ;
struct libusb_endpoint_descriptor {int /*<<< orphan*/  extra_length; int /*<<< orphan*/  extra; } ;
struct libusb_context {int dummy; } ;

/* Variables and functions */
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct libusb_ss_endpoint_companion_descriptor**) ; 

int
FUNC1(struct libusb_context *ctx,
    const struct libusb_endpoint_descriptor *endpoint,
    struct libusb_ss_endpoint_companion_descriptor **ep_comp)
{
	if (endpoint == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);
	return (FUNC0(endpoint->extra, endpoint->extra_length, ep_comp));
}