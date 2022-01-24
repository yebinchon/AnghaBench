#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_3__ {int /*<<< orphan*/  bufsize; void* buffer; int /*<<< orphan*/  errbuf; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(pcap_t *p, u_int bufsize)
{
	void *bigger_buffer;

	bigger_buffer = FUNC1(p->buffer, bufsize);
	if (bigger_buffer == NULL) {
		FUNC0(p->errbuf, PCAP_ERRBUF_SIZE, "out of memory");
		return (0);
	}
	p->buffer = bigger_buffer;
	p->bufsize = bufsize;
	return (1);
}