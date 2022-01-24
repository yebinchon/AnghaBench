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
struct respip_set {int dummy; } ;
struct resp_addr {scalar_t__ action; } ;
typedef  enum respip_action { ____Placeholder_respip_action } respip_action ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int respip_always_nxdomain ; 
 int respip_always_refuse ; 
 int respip_always_transparent ; 
 int respip_deny ; 
 struct resp_addr* FUNC1 (struct respip_set*,char const*,int) ; 
 int respip_inform ; 
 int respip_inform_deny ; 
 int respip_inform_redirect ; 
 scalar_t__ respip_none ; 
 int respip_redirect ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int
FUNC4(struct respip_set* set, const char* ipstr,
	const char* actnstr)
{
	struct resp_addr* node;
	enum respip_action action;

	if(!(node=FUNC1(set, ipstr, 1)))
		return 0;
	if(node->action != respip_none) {
		FUNC3(VERB_QUERY, "duplicate response-ip action for '%s', overridden.",
			ipstr);
	}
        if(FUNC2(actnstr, "deny") == 0)
                action = respip_deny;
        else if(FUNC2(actnstr, "redirect") == 0)
                action = respip_redirect;
        else if(FUNC2(actnstr, "inform") == 0)
                action = respip_inform;
        else if(FUNC2(actnstr, "inform_deny") == 0)
                action = respip_inform_deny;
        else if(FUNC2(actnstr, "inform_redirect") == 0)
                action = respip_inform_redirect;
        else if(FUNC2(actnstr, "always_transparent") == 0)
                action = respip_always_transparent;
        else if(FUNC2(actnstr, "always_refuse") == 0)
                action = respip_always_refuse;
        else if(FUNC2(actnstr, "always_nxdomain") == 0)
                action = respip_always_nxdomain;
        else {
                FUNC0("unknown response-ip action %s", actnstr);
                return 0;
        }
	node->action = action;
	return 1;
}