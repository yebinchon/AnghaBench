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
struct rpcap_header {int /*<<< orphan*/  plen; } ;
struct pcap_rpcap {scalar_t__ rmt_sockctrl; scalar_t__ rmt_sockdata; int /*<<< orphan*/ * currentfilter; int /*<<< orphan*/  protocol_version; } ;
struct activehosts {scalar_t__ sockctrl; struct activehosts* next; } ;
struct TYPE_3__ {struct pcap_rpcap* priv; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  RPCAP_MSG_CLOSE ; 
 int /*<<< orphan*/  RPCAP_MSG_ENDCAP_REQ ; 
 struct activehosts* activeHosts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpcap_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpcap_header*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(pcap_t *fp)
{
	struct pcap_rpcap *pr = fp->priv;	/* structure used when doing a remote live capture */
	struct rpcap_header header;		/* header of the RPCAP packet */
	struct activehosts *temp;		/* temp var needed to scan the host list chain, to detect if we're in active mode */
	int active = 0;				/* active mode or not? */

	/* detect if we're in active mode */
	temp = activeHosts;
	while (temp)
	{
		if (temp->sockctrl == pr->rmt_sockctrl)
		{
			active = 1;
			break;
		}
		temp = temp->next;
	}

	if (!active)
	{
		FUNC1(&header, pr->protocol_version,
		    RPCAP_MSG_CLOSE, 0, 0);

		/*
		 * Send the close request; don't report any errors, as
		 * we're closing this pcap_t, and have no place to report
		 * the error.  No reply is sent to this message.
		 */
		(void)FUNC6(pr->rmt_sockctrl, (char *)&header,
		    sizeof(struct rpcap_header), NULL, 0);
	}
	else
	{
		FUNC1(&header, pr->protocol_version,
		    RPCAP_MSG_ENDCAP_REQ, 0, 0);

		/*
		 * Send the end capture request; don't report any errors,
		 * as we're closing this pcap_t, and have no place to
		 * report the error.
		 */
		if (FUNC6(pr->rmt_sockctrl, (char *)&header,
		    sizeof(struct rpcap_header), NULL, 0) == 0)
		{
			/*
			 * Wait for the answer; don't report any errors,
			 * as we're closing this pcap_t, and have no
			 * place to report the error.
			 */
			if (FUNC3(pr->rmt_sockctrl,
			    pr->protocol_version, RPCAP_MSG_ENDCAP_REQ,
			    &header, NULL) == 0)
			{
				(void)FUNC2(pr->rmt_sockctrl,
				    header.plen, NULL);
			}
		}
	}

	if (pr->rmt_sockdata)
	{
		FUNC5(pr->rmt_sockdata, NULL, 0);
		pr->rmt_sockdata = 0;
	}

	if ((!active) && (pr->rmt_sockctrl))
		FUNC5(pr->rmt_sockctrl, NULL, 0);

	pr->rmt_sockctrl = 0;

	if (pr->currentfilter)
	{
		FUNC0(pr->currentfilter);
		pr->currentfilter = NULL;
	}

	/* To avoid inconsistencies in the number of sock_init() */
	FUNC4();
}