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
struct TYPE_4__ {int linktype_ext; int /*<<< orphan*/  linktype; int /*<<< orphan*/  errbuf; } ;
typedef  TYPE_1__ pcap_t ;
typedef  int /*<<< orphan*/  pcap_dumper_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

pcap_dumper_t *
FUNC3(pcap_t *p, FILE *f)
{
	int linktype;

	linktype = FUNC0(p->linktype);
	if (linktype == -1) {
		FUNC2(p->errbuf, PCAP_ERRBUF_SIZE,
		    "stream: link-layer type %d isn't supported in savefiles",
		    p->linktype);
		return (NULL);
	}
	linktype |= p->linktype_ext;

	return (FUNC1(p, linktype, f, "stream"));
}