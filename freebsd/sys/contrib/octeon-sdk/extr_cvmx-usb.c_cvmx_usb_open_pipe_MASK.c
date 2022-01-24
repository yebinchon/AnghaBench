#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int cvmx_usb_transfer_t ;
typedef  int /*<<< orphan*/  cvmx_usb_state_t ;
typedef  int cvmx_usb_speed_t ;
struct TYPE_10__ {int flags; int device_addr; int endpoint_num; int device_speed; int max_packet; int transfer_type; int transfer_dir; int interval; int next_tx_frame; int multi_count; int hub_device_addr; int hub_port; int split_sc_frame; scalar_t__ pid_toggle; } ;
typedef  TYPE_1__ cvmx_usb_pipe_t ;
typedef  int cvmx_usb_pipe_flags_t ;
struct TYPE_12__ {TYPE_1__* head; } ;
struct TYPE_11__ {int frame_number; int /*<<< orphan*/  idle_pipes; TYPE_3__ free_pipes; } ;
typedef  TYPE_2__ cvmx_usb_internal_state_t ;
typedef  int cvmx_usb_direction_t ;

/* Variables and functions */
 int CVMX_USB_DIRECTION_IN ; 
 int CVMX_USB_DIRECTION_OUT ; 
 int /*<<< orphan*/  CVMX_USB_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  CVMX_USB_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int CVMX_USB_SPEED_HIGH ; 
 int CVMX_USB_SPEED_LOW ; 
 int CVMX_USB_TRANSFER_BULK ; 
 int CVMX_USB_TRANSFER_CONTROL ; 
 int CVMX_USB_TRANSFER_INTERRUPT ; 
 int MAX_USB_ADDRESS ; 
 int MAX_USB_ENDPOINT ; 
 int MAX_USB_HUB_PORT ; 
 int __CVMX_USB_PIPE_FLAGS_NEED_PING ; 
 int __CVMX_USB_PIPE_FLAGS_OPEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(cvmx_usb_state_t *state, cvmx_usb_pipe_flags_t flags,
                       int device_addr, int endpoint_num,
                       cvmx_usb_speed_t device_speed, int max_packet,
                       cvmx_usb_transfer_t transfer_type,
                       cvmx_usb_direction_t transfer_dir, int interval,
                       int multi_count, int hub_device_addr, int hub_port)
{
    cvmx_usb_pipe_t *pipe;
    cvmx_usb_internal_state_t *usb = (cvmx_usb_internal_state_t*)state;

    FUNC0();
    FUNC1("%p", *state);
    FUNC1("0x%x", flags);
    FUNC1("%d", device_addr);
    FUNC1("%d", endpoint_num);
    FUNC1("%d", device_speed);
    FUNC1("%d", max_packet);
    FUNC1("%d", transfer_type);
    FUNC1("%d", transfer_dir);
    FUNC1("%d", interval);
    FUNC1("%d", multi_count);
    FUNC1("%d", hub_device_addr);
    FUNC1("%d", hub_port);

    if (FUNC7((device_addr < 0) || (device_addr > MAX_USB_ADDRESS)))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7((endpoint_num < 0) || (endpoint_num > MAX_USB_ENDPOINT)))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7(device_speed > CVMX_USB_SPEED_LOW))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7((max_packet <= 0) || (max_packet > 1024)))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7(transfer_type > CVMX_USB_TRANSFER_INTERRUPT))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7((transfer_dir != CVMX_USB_DIRECTION_OUT) &&
        (transfer_dir != CVMX_USB_DIRECTION_IN)))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7(interval < 0))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7((transfer_type == CVMX_USB_TRANSFER_CONTROL) && interval))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7(multi_count < 0))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7((device_speed != CVMX_USB_SPEED_HIGH) &&
        (multi_count != 0)))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7((hub_device_addr < 0) || (hub_device_addr > MAX_USB_ADDRESS)))
        FUNC2(CVMX_USB_INVALID_PARAM);
    if (FUNC7((hub_port < 0) || (hub_port > MAX_USB_HUB_PORT)))
        FUNC2(CVMX_USB_INVALID_PARAM);

    /* Find a free pipe */
    pipe = usb->free_pipes.head;
    if (!pipe)
        FUNC2(CVMX_USB_NO_MEMORY);
    FUNC6(&usb->free_pipes, pipe);
    pipe->flags = flags | __CVMX_USB_PIPE_FLAGS_OPEN;
    if ((device_speed == CVMX_USB_SPEED_HIGH) &&
        (transfer_dir == CVMX_USB_DIRECTION_OUT) &&
        (transfer_type == CVMX_USB_TRANSFER_BULK))
        pipe->flags |= __CVMX_USB_PIPE_FLAGS_NEED_PING;
    pipe->device_addr = device_addr;
    pipe->endpoint_num = endpoint_num;
    pipe->device_speed = device_speed;
    pipe->max_packet = max_packet;
    pipe->transfer_type = transfer_type;
    pipe->transfer_dir = transfer_dir;
    /* All pipes use interval to rate limit NAK processing. Force an interval
        if one wasn't supplied */
    if (!interval)
        interval = 1;
    if (FUNC5(usb, pipe))
    {
        pipe->interval = interval*8;
        /* Force start splits to be schedule on uFrame 0 */
        pipe->next_tx_frame = ((usb->frame_number+7)&~7) + pipe->interval;
    }
    else
    {
        pipe->interval = interval;
        pipe->next_tx_frame = usb->frame_number + pipe->interval;
    }
    pipe->multi_count = multi_count;
    pipe->hub_device_addr = hub_device_addr;
    pipe->hub_port = hub_port;
    pipe->pid_toggle = 0;
    pipe->split_sc_frame = -1;
    FUNC3(&usb->idle_pipes, pipe);

    /* We don't need to tell the hardware about this pipe yet since
        it doesn't have any submitted requests */

    FUNC2(FUNC4(usb, pipe));
}