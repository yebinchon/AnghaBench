#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  rmp_seqno; int /*<<< orphan*/  rmp_session; } ;
struct rmp_packet {int r_type; TYPE_1__ r_brq; } ;
struct TYPE_18__ {int /*<<< orphan*/  files; } ;
struct TYPE_17__ {struct rmp_packet rmp; } ;
typedef  TYPE_2__ RMPCONN ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  BootFiles ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
#define  RMP_BOOT_DONE 132 
#define  RMP_BOOT_REPL 131 
#define  RMP_BOOT_REQ 130 
 int /*<<< orphan*/  RMP_PROBESID ; 
#define  RMP_READ_REPL 129 
#define  RMP_READ_REQ 128 
 int /*<<< orphan*/  FUNC5 (struct rmp_packet*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rmp_packet*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

void
FUNC12(RMPCONN *rconn, CLIENT *client)
{
	struct rmp_packet *rmp;
	RMPCONN *rconnout;

	rmp = &rconn->rmp;		/* cache pointer to RMP packet */

	switch(rmp->r_type) {		/* do what we came here to do */
		case RMP_BOOT_REQ:		/* boot request */
			if ((rconnout = FUNC4(rconn)) == NULL)
				return;

			/*
			 *  If the Session ID is 0xffff, this is a "probe"
			 *  packet and we do not want to add the connection
			 *  to the linked list of active connections.  There
			 *  are two types of probe packets, if the Sequence
			 *  Number is 0 they want to know our host name, o/w
			 *  they want the name of the file associated with
			 *  the number spec'd by the Sequence Number.
			 *
			 *  If this is an actual boot request, open the file
			 *  and send a reply.  If SendBootRepl() does not
			 *  return 0, add the connection to the linked list
			 *  of active connections, otherwise delete it since
			 *  an error was encountered.
			 */
			if (FUNC10(rmp->r_brq.rmp_session) == RMP_PROBESID) {
				if (FUNC9(rmp->r_brq.rmp_seqno))
					(void) FUNC8(rconnout);
				else
					(void) FUNC6(rmp, rconnout,
					                  client? client->files:
					                          BootFiles);
				FUNC3(rconnout);
			} else {
				if (FUNC5(rmp, rconnout,
				    client? client->files: BootFiles))
					FUNC0(rconnout);
				else
					FUNC3(rconnout);
			}
			break;

		case RMP_BOOT_REPL:		/* boot reply (not valid) */
			FUNC11(LOG_WARNING, "%s: sent a boot reply",
			       FUNC2(rconn));
			break;

		case RMP_READ_REQ:		/* read request */
			/*
			 *  Send a portion of the boot file.
			 */
			(void) FUNC7(rconn);
			break;

		case RMP_READ_REPL:		/* read reply (not valid) */
			FUNC11(LOG_WARNING, "%s: sent a read reply",
			       FUNC2(rconn));
			break;

		case RMP_BOOT_DONE:		/* boot complete */
			/*
			 *  Remove the entry from the linked list of active
			 *  connections.
			 */
			(void) FUNC1(rconn);
			break;

		default:			/* unknown RMP packet type */
			FUNC11(LOG_WARNING, "%s: unknown packet type (%u)",
			       FUNC2(rconn), rmp->r_type);
	}
}