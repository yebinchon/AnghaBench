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
struct sshkey {int dummy; } ;
struct TYPE_3__ {char* c_output_name; char* c_name; } ;
typedef  TYPE_1__ con ;

/* Variables and functions */
 scalar_t__ SSH_DEFAULT_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ get_cert ; 
 int /*<<< orphan*/  hash_hosts ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sshkey*) ; 
 scalar_t__ ssh_port ; 
 char* FUNC2 (char**,char*) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(con *c, struct sshkey *key)
{
	char *hosts = c->c_output_name ? c->c_output_name : c->c_name;
	char *host, *ohosts;

	if (key == NULL)
		return;
	if (get_cert || (!hash_hosts && ssh_port == SSH_DEFAULT_PORT)) {
		FUNC1(hosts, key);
		return;
	}
	ohosts = hosts = FUNC3(hosts);
	while ((host = FUNC2(&hosts, ",")) != NULL)
		FUNC1(host, key);
	FUNC0(ohosts);
}