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
struct svc_rpc_gss_client_list {int dummy; } ;
struct svc_rpc_gss_client {size_t cl_id; scalar_t__ cl_expiration; int /*<<< orphan*/  cl_locked; int /*<<< orphan*/  cl_state; } ;

/* Variables and functions */
 size_t CLIENT_HASH_SIZE ; 
 int /*<<< orphan*/  CLIENT_NEW ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rpc_gss_client_list*,struct svc_rpc_gss_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cl_alllink ; 
 int /*<<< orphan*/  cl_link ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct svc_rpc_gss_client* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rpc_gss_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  svc_rpc_gss_client_count ; 
 struct svc_rpc_gss_client_list* svc_rpc_gss_client_hash ; 
 struct svc_rpc_gss_client_list svc_rpc_gss_clients ; 
 int /*<<< orphan*/  svc_rpc_gss_next_clientid ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct svc_rpc_gss_client *
FUNC5(void)
{
	struct svc_rpc_gss_client *client;
	struct svc_rpc_gss_client_list *list;

	FUNC1("in svc_rpc_gss_create_client()");

	client = FUNC2(sizeof(struct svc_rpc_gss_client));
	FUNC3(client, 0, sizeof(struct svc_rpc_gss_client));
	client->cl_id = svc_rpc_gss_next_clientid++;
	list = &svc_rpc_gss_client_hash[client->cl_id % CLIENT_HASH_SIZE];
	FUNC0(list, client, cl_link);
	FUNC0(&svc_rpc_gss_clients, client, cl_alllink);

	/*
	 * Start the client off with a short expiration time. We will
	 * try to get a saner value from the client creds later.
	 */
	client->cl_state = CLIENT_NEW;
	client->cl_locked = FALSE;
	client->cl_expiration = FUNC4(0) + 5*60;
	svc_rpc_gss_client_count++;

	return (client);
}