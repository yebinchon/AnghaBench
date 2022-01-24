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
struct tlsv1_client {int /*<<< orphan*/  server_cert; int /*<<< orphan*/  partial_input; int /*<<< orphan*/  cred; struct tlsv1_client* client_hello_ext; int /*<<< orphan*/  verify; int /*<<< orphan*/  rl; int /*<<< orphan*/  server_rsa_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_NULL_WITH_NULL_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tlsv1_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct tlsv1_client *conn)
{
	FUNC0(conn->server_rsa_key);
	FUNC7(&conn->rl, TLS_NULL_WITH_NULL_NULL);
	FUNC6(&conn->rl);
	FUNC5(&conn->rl);
	FUNC2(&conn->verify);
	FUNC1(conn->client_hello_ext);
	FUNC3(conn);
	FUNC4(conn->cred);
	FUNC8(conn->partial_input);
	FUNC9(conn->server_cert);
	FUNC1(conn);
}