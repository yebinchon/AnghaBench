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
typedef  int /*<<< orphan*/  pcap_if_list_t ;
struct TYPE_3__ {int /*<<< orphan*/  device_code; } ;
typedef  TYPE_1__ dag_card_inf_t ;

/* Variables and functions */
 int DAGNAME_BUFSIZE ; 
 int DAG_MAX_BOARDS ; 
 int DAG_STREAM_MAX ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*,char*,int,int*) ; 
 TYPE_1__* FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,...) ; 

int
FUNC10(pcap_if_list_t *devlistp, char *errbuf)
{
	char name[12];	/* XXX - pick a size */
	int c;
	char dagname[DAGNAME_BUFSIZE];
	int dagstream;
	int dagfd;
	dag_card_inf_t *inf;
	char *description;
	int stream, rxstreams;

	/* Try all the DAGs 0-DAG_MAX_BOARDS */
	for (c = 0; c < DAG_MAX_BOARDS; c++) {
		FUNC9(name, 12, "dag%d", c);
		if (-1 == FUNC6(name, dagname, DAGNAME_BUFSIZE, &dagstream))
		{
			(void) FUNC9(errbuf, PCAP_ERRBUF_SIZE,
			    "dag: device name %s can't be parsed", name);
			return (-1);
		}
		if ( (dagfd = FUNC5(dagname)) >= 0 ) {
			description = NULL;
			if ((inf = FUNC7(dagfd)))
				description = FUNC4(inf->device_code, 1);
			/*
			 * XXX - is there a way to determine whether
			 * the card is plugged into a network or not?
			 * If so, we should check that and set
			 * PCAP_IF_CONNECTION_STATUS_CONNECTED or
			 * PCAP_IF_CONNECTION_STATUS_DISCONNECTED.
			 *
			 * Also, are there notions of "up" and "running"?
			 */
			if (FUNC0(devlistp, name, 0, description, errbuf) == NULL) {
				/*
				 * Failure.
				 */
				return (-1);
			}
			rxstreams = FUNC8(dagfd);
			for(stream=0;stream<DAG_STREAM_MAX;stream+=2) {
				if (0 == FUNC1(dagfd, stream, 0, 0)) {
					FUNC3(dagfd, stream);

					FUNC9(name,  10, "dag%d:%d", c, stream);
					if (FUNC0(devlistp, name, 0, description, errbuf) == NULL) {
						/*
						 * Failure.
						 */
						return (-1);
					}

					rxstreams--;
					if(rxstreams <= 0) {
						break;
					}
				}
			}
			FUNC2(dagfd);
		}

	}
	return (0);
}