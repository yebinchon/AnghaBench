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
typedef  int /*<<< orphan*/  uint64_t ;
struct nv {int dummy; } ;

/* Variables and functions */
 scalar_t__ hio_done_list_size ; 
 scalar_t__ hio_free_list_size ; 
 scalar_t__ hio_recv_remote_list_size ; 
 scalar_t__ hio_send_local_list_size ; 
 scalar_t__ hio_send_remote_list_size ; 
 int /*<<< orphan*/  FUNC0 (struct nv*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC1(struct nv *nvout)
{

	FUNC0(nvout, (uint64_t)hio_free_list_size,
	    "idle_queue_size");
	FUNC0(nvout, (uint64_t)hio_send_local_list_size,
	    "local_queue_size");
	FUNC0(nvout, (uint64_t)hio_send_remote_list_size,
	    "send_queue_size");
	FUNC0(nvout, (uint64_t)hio_recv_remote_list_size,
	    "recv_queue_size");
	FUNC0(nvout, (uint64_t)hio_done_list_size,
	    "done_queue_size");
}