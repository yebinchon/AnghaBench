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
struct option {size_t code; } ;
struct interface_info {int /*<<< orphan*/  hw_address; } ;
struct client_config {int /*<<< orphan*/  script_name; int /*<<< orphan*/  initial_interval; int /*<<< orphan*/  backoff_cutoff; int /*<<< orphan*/  reboot_timeout; int /*<<< orphan*/  select_interval; int /*<<< orphan*/  retry_interval; int /*<<< orphan*/  timeout; int /*<<< orphan*/  required_options; int /*<<< orphan*/  requested_options; int /*<<< orphan*/  requested_option_count; int /*<<< orphan*/  media; int /*<<< orphan*/ * default_actions; int /*<<< orphan*/ * defaults; int /*<<< orphan*/ * send_options; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_APPEND ; 
 int /*<<< orphan*/  ACTION_DEFAULT ; 
 int /*<<< orphan*/  ACTION_PREPEND ; 
 int /*<<< orphan*/  ACTION_SUPERSEDE ; 
#define  ALIAS 147 
#define  APPEND 146 
#define  BACKOFF_CUTOFF 145 
#define  DEFAULT 144 
#define  HARDWARE 143 
#define  INITIAL_INTERVAL 142 
#define  INTERFACE 141 
#define  LEASE 140 
#define  MEDIA 139 
#define  PREPEND 138 
#define  REBOOT 137 
#define  REJECT 136 
#define  REQUEST 135 
#define  REQUIRE 134 
#define  RETRY 133 
#define  SCRIPT 132 
#define  SELECT_TIMEOUT 131 
 int SEMI ; 
#define  SEND 130 
#define  SUPERSEDE 129 
#define  TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct client_config*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct option* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct client_config*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(FILE *cfile, struct interface_info *ip,
    struct client_config *config)
{
	int		 token;
	char		*val;
	struct option	*option;

	switch (FUNC1(&val, cfile)) {
	case SEND:
		FUNC6(cfile, &config->send_options[0]);
		return;
	case DEFAULT:
		option = FUNC6(cfile, &config->defaults[0]);
		if (option)
			config->default_actions[option->code] = ACTION_DEFAULT;
		return;
	case SUPERSEDE:
		option = FUNC6(cfile, &config->defaults[0]);
		if (option)
			config->default_actions[option->code] =
			    ACTION_SUPERSEDE;
		return;
	case APPEND:
		option = FUNC6(cfile, &config->defaults[0]);
		if (option)
			config->default_actions[option->code] = ACTION_APPEND;
		return;
	case PREPEND:
		option = FUNC6(cfile, &config->defaults[0]);
		if (option)
			config->default_actions[option->code] = ACTION_PREPEND;
		return;
	case MEDIA:
		FUNC10(cfile, &config->media, 1);
		return;
	case HARDWARE:
		if (ip)
			FUNC3(cfile, &ip->hw_address);
		else {
			FUNC11("hardware address parameter %s",
				    "not allowed here.");
			FUNC12(cfile);
		}
		return;
	case REQUEST:
		config->requested_option_count =
			FUNC7(cfile, config->requested_options);
		return;
	case REQUIRE:
		FUNC0(config->required_options, 0,
		    sizeof(config->required_options));
		FUNC7(cfile, config->required_options);
		return;
	case TIMEOUT:
		FUNC5(cfile, &config->timeout);
		return;
	case RETRY:
		FUNC5(cfile, &config->retry_interval);
		return;
	case SELECT_TIMEOUT:
		FUNC5(cfile, &config->select_interval);
		return;
	case REBOOT:
		FUNC5(cfile, &config->reboot_timeout);
		return;
	case BACKOFF_CUTOFF:
		FUNC5(cfile, &config->backoff_cutoff);
		return;
	case INITIAL_INTERVAL:
		FUNC5(cfile, &config->initial_interval);
		return;
	case SCRIPT:
		config->script_name = FUNC9(cfile);
		return;
	case INTERFACE:
		if (ip)
			FUNC11("nested interface declaration.");
		FUNC4(cfile, config);
		return;
	case LEASE:
		FUNC2(cfile, 1);
		return;
	case ALIAS:
		FUNC2(cfile, 2);
		return;
	case REJECT:
		FUNC8(cfile, config);
		return;
	default:
		FUNC11("expecting a statement.");
		FUNC12(cfile);
		break;
	}
	token = FUNC1(&val, cfile);
	if (token != SEMI) {
		FUNC11("semicolon expected.");
		FUNC12(cfile);
	}
}