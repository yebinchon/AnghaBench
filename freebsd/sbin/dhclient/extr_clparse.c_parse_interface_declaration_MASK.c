#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct interface_info {TYPE_1__* client; } ;
struct client_config {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  config; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int LBRACE ; 
 int RBRACE ; 
 int STRING ; 
 struct interface_info* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct interface_info*,struct client_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct interface_info*) ; 
 int FUNC3 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct interface_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(FILE *cfile, struct client_config *outer_config)
{
	int			 token;
	char			*val;
	struct interface_info	*ip;

	token = FUNC3(&val, cfile);
	if (token != STRING) {
		FUNC5("expecting interface name (in quotes).");
		FUNC7(cfile);
		return;
	}

	ip = FUNC0(val);

	if (!ip->client)
		FUNC2(ip);

	if (!ip->client->config)
		FUNC1(ip, outer_config);

	token = FUNC3(&val, cfile);
	if (token != LBRACE) {
		FUNC5("expecting left brace.");
		FUNC7(cfile);
		return;
	}

	do {
		token = FUNC6(&val, cfile);
		if (token == EOF) {
			FUNC5("unterminated interface declaration.");
			return;
		}
		if (token == RBRACE)
			break;
		FUNC4(cfile, ip, ip->client->config);
	} while (1);
	token = FUNC3(&val, cfile);
}