#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bpf_program {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  errbuf; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(pcap_t *p, struct bpf_program *fp) {
  if (!p)
    return -1;
  if (!fp) {
    FUNC1(p->errbuf, "setfilter: No filter specified",
	    sizeof(p->errbuf));
    return -1;
  }

  /* Make our private copy of the filter */

  if (FUNC0(p, fp) < 0)
    return -1;

  return (0);
}