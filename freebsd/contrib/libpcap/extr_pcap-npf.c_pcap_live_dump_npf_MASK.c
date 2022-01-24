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
struct pcap_win {int /*<<< orphan*/  adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/  errbuf; struct pcap_win* priv; } ;
typedef  TYPE_1__ pcap_t ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  PACKET_MODE_DUMP ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(pcap_t *p, char *filename, int maxsize, int maxpacks)
{
	struct pcap_win *pw = p->priv;
	BOOLEAN res;

	/* Set the packet driver in dump mode */
	res = FUNC2(pw->adapter, PACKET_MODE_DUMP);
	if(res == FALSE){
		FUNC3(p->errbuf, PCAP_ERRBUF_SIZE,
		    "Error setting dump mode");
		return (-1);
	}

	/* Set the name of the dump file */
	res = FUNC1(pw->adapter, filename, (int)FUNC4(filename));
	if(res == FALSE){
		FUNC3(p->errbuf, PCAP_ERRBUF_SIZE,
		    "Error setting kernel dump file name");
		return (-1);
	}

	/* Set the limits of the dump file */
	res = FUNC0(pw->adapter, maxsize, maxpacks);
	if(res == FALSE) {
		FUNC3(p->errbuf, PCAP_ERRBUF_SIZE,
		    		"Error setting dump limit");
		return (-1);
	}

	return (0);
}