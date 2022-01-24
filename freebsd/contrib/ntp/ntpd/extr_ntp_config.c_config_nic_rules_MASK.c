#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_5__ {char* if_name; int match_class; int action; struct TYPE_5__* link; } ;
typedef  TYPE_1__ nic_rule_node ;
typedef  int /*<<< orphan*/  nic_rule_match ;
typedef  int /*<<< orphan*/  nic_rule_action ;
struct TYPE_6__ {int /*<<< orphan*/  nic_rules; } ;
typedef  TYPE_2__ config_tree ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_DROP ; 
 int /*<<< orphan*/  ACTION_IGNORE ; 
 int /*<<< orphan*/  ACTION_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTERFACE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MATCH_ALL ; 
 int /*<<< orphan*/  MATCH_IFADDR ; 
 int /*<<< orphan*/  MATCH_IFNAME ; 
 int /*<<< orphan*/  MATCH_IPV4 ; 
 int /*<<< orphan*/  MATCH_IPV6 ; 
 int /*<<< orphan*/  MATCH_WILDCARD ; 
 int /*<<< orphan*/  NOVIRTUALIPS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  T_All 134 
#define  T_Drop 133 
#define  T_Ignore 132 
#define  T_Ipv4 131 
#define  T_Ipv6 130 
#define  T_Listen 129 
#define  T_Wildcard 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ current_time ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC14 (char*,char*,int*) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

__attribute__((used)) static void
FUNC17(
	config_tree *ptree,
	int/*BOOL*/ input_from_file
	)
{
	nic_rule_node *	curr_node;
	sockaddr_u	addr;
	nic_rule_match	match_type;
	nic_rule_action	action;
	char *		if_name;
	char *		pchSlash;
	int		prefixlen;
	int		addrbits;

	curr_node = FUNC2(ptree->nic_rules);

	if (curr_node != NULL
	    && (FUNC1( NOVIRTUALIPS ) || FUNC1( INTERFACE ))) {
		FUNC13(LOG_ERR,
			"interface/nic rules are not allowed with --interface (-I) or --novirtualips (-L)%s",
			(input_from_file) ? ", exiting" : "");
		if (input_from_file)
			FUNC7(1);
		else
			return;
	}

	for (; curr_node != NULL; curr_node = curr_node->link) {
		prefixlen = -1;
		if_name = curr_node->if_name;
		if (if_name != NULL)
			if_name = FUNC6(if_name);

		switch (curr_node->match_class) {

		default:
			FUNC8("config_nic_rules: match-class-token=%d", curr_node->match_class);

		case 0:
			/*
			 * 0 is out of range for valid token T_...
			 * and in a nic_rules_node indicates the
			 * interface descriptor is either a name or
			 * address, stored in if_name in either case.
			 */
			FUNC3(if_name != NULL);
			pchSlash = FUNC15(if_name, '/');
			if (pchSlash != NULL)
				*pchSlash = '\0';
			if (FUNC10(if_name, AF_UNSPEC, &addr)) {
				match_type = MATCH_IFADDR;
				if (pchSlash != NULL
				    && 1 == FUNC14(pchSlash + 1, "%d",
					    &prefixlen)) {
					addrbits = 8 *
					    FUNC4(FUNC0(&addr));
					prefixlen = FUNC11(-1, prefixlen);
					prefixlen = FUNC12(prefixlen,
							addrbits);
				}
			} else {
				match_type = MATCH_IFNAME;
				if (pchSlash != NULL)
					*pchSlash = '/';
			}
			break;

		case T_All:
			match_type = MATCH_ALL;
			break;

		case T_Ipv4:
			match_type = MATCH_IPV4;
			break;

		case T_Ipv6:
			match_type = MATCH_IPV6;
			break;

		case T_Wildcard:
			match_type = MATCH_WILDCARD;
			break;
		}

		switch (curr_node->action) {

		default:
			FUNC8("config_nic_rules: action-token=%d", curr_node->action);

		case T_Listen:
			action = ACTION_LISTEN;
			break;

		case T_Ignore:
			action = ACTION_IGNORE;
			break;

		case T_Drop:
			action = ACTION_DROP;
			break;
		}

		FUNC5(match_type, if_name, prefixlen,
			     action);
		FUNC16(current_time + 2);
		if (if_name != NULL)
			FUNC9(if_name);
	}
}