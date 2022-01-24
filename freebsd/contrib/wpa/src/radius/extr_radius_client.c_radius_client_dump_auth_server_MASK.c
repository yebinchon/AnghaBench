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
struct radius_msg_list {scalar_t__ msg_type; struct radius_msg_list* next; } ;
struct radius_client_data {struct radius_msg_list* msgs; } ;
struct hostapd_radius_server {int /*<<< orphan*/  packets_dropped; int /*<<< orphan*/  unknown_types; int /*<<< orphan*/  timeouts; int /*<<< orphan*/  bad_authenticators; int /*<<< orphan*/  malformed_responses; int /*<<< orphan*/  access_challenges; int /*<<< orphan*/  access_rejects; int /*<<< orphan*/  access_accepts; int /*<<< orphan*/  retransmissions; int /*<<< orphan*/  requests; int /*<<< orphan*/  round_trip_time; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  abuf ;

/* Variables and functions */
 scalar_t__ RADIUS_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *buf, size_t buflen,
					  struct hostapd_radius_server *serv,
					  struct radius_client_data *cli)
{
	int pending = 0;
	struct radius_msg_list *msg;
	char abuf[50];

	if (cli) {
		for (msg = cli->msgs; msg; msg = msg->next) {
			if (msg->msg_type == RADIUS_AUTH)
				pending++;
		}
	}

	return FUNC1(buf, buflen,
			   "radiusAuthServerIndex=%d\n"
			   "radiusAuthServerAddress=%s\n"
			   "radiusAuthClientServerPortNumber=%d\n"
			   "radiusAuthClientRoundTripTime=%d\n"
			   "radiusAuthClientAccessRequests=%u\n"
			   "radiusAuthClientAccessRetransmissions=%u\n"
			   "radiusAuthClientAccessAccepts=%u\n"
			   "radiusAuthClientAccessRejects=%u\n"
			   "radiusAuthClientAccessChallenges=%u\n"
			   "radiusAuthClientMalformedAccessResponses=%u\n"
			   "radiusAuthClientBadAuthenticators=%u\n"
			   "radiusAuthClientPendingRequests=%u\n"
			   "radiusAuthClientTimeouts=%u\n"
			   "radiusAuthClientUnknownTypes=%u\n"
			   "radiusAuthClientPacketsDropped=%u\n",
			   serv->index,
			   FUNC0(&serv->addr, abuf, sizeof(abuf)),
			   serv->port,
			   serv->round_trip_time,
			   serv->requests,
			   serv->retransmissions,
			   serv->access_accepts,
			   serv->access_rejects,
			   serv->access_challenges,
			   serv->malformed_responses,
			   serv->bad_authenticators,
			   pending,
			   serv->timeouts,
			   serv->unknown_types,
			   serv->packets_dropped);
}