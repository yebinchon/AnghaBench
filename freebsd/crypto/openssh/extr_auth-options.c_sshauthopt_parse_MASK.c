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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
struct sshauthopt {int restricted; int permit_port_forwarding_flag; int permit_agent_forwarding_flag; int permit_x11_forwarding_flag; int permit_pty_flag; int permit_user_rc; int cert_authority; scalar_t__ valid_before; scalar_t__ nenv; char** env; int /*<<< orphan*/  force_tun_device; int /*<<< orphan*/  npermitlisten; int /*<<< orphan*/  permitlisten; int /*<<< orphan*/  npermitopen; int /*<<< orphan*/  permitopen; int /*<<< orphan*/ * required_from_host_keys; int /*<<< orphan*/ * cert_principals; int /*<<< orphan*/ * force_command; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  SSH_TUNID_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const**,char const**) ; 
 int FUNC5 (char*,int,char const**) ; 
 scalar_t__ FUNC6 (char const**,char*) ; 
 scalar_t__ FUNC7 (char*,scalar_t__*) ; 
 char** FUNC8 (char**,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sshauthopt*) ; 
 struct sshauthopt* FUNC10 () ; 
 char* FUNC11 (char*,char) ; 

struct sshauthopt *
FUNC12(const char *opts, const char **errstrp)
{
	char **oarray, *opt, *cp, *tmp;
	int r;
	struct sshauthopt *ret = NULL;
	const char *errstr = "unknown error";
	uint64_t valid_before;

	if (errstrp != NULL)
		*errstrp = NULL;
	if ((ret = FUNC10()) == NULL)
		goto alloc_fail;

	if (opts == NULL)
		return ret;

	while (*opts && *opts != ' ' && *opts != '\t') {
		/* flag options */
		if ((r = FUNC5("restrict", 0, &opts)) != -1) {
			ret->restricted = 1;
			ret->permit_port_forwarding_flag = 0;
			ret->permit_agent_forwarding_flag = 0;
			ret->permit_x11_forwarding_flag = 0;
			ret->permit_pty_flag = 0;
			ret->permit_user_rc = 0;
		} else if ((r = FUNC5("cert-authority", 0, &opts)) != -1) {
			ret->cert_authority = r;
		} else if ((r = FUNC5("port-forwarding", 1, &opts)) != -1) {
			ret->permit_port_forwarding_flag = r == 1;
		} else if ((r = FUNC5("agent-forwarding", 1, &opts)) != -1) {
			ret->permit_agent_forwarding_flag = r == 1;
		} else if ((r = FUNC5("x11-forwarding", 1, &opts)) != -1) {
			ret->permit_x11_forwarding_flag = r == 1;
		} else if ((r = FUNC5("pty", 1, &opts)) != -1) {
			ret->permit_pty_flag = r == 1;
		} else if ((r = FUNC5("user-rc", 1, &opts)) != -1) {
			ret->permit_user_rc = r == 1;
		} else if (FUNC6(&opts, "command")) {
			if (ret->force_command != NULL) {
				errstr = "multiple \"command\" clauses";
				goto fail;
			}
			ret->force_command = FUNC4(&opts, &errstr);
			if (ret->force_command == NULL)
				goto fail;
		} else if (FUNC6(&opts, "principals")) {
			if (ret->cert_principals != NULL) {
				errstr = "multiple \"principals\" clauses";
				goto fail;
			}
			ret->cert_principals = FUNC4(&opts, &errstr);
			if (ret->cert_principals == NULL)
				goto fail;
		} else if (FUNC6(&opts, "from")) {
			if (ret->required_from_host_keys != NULL) {
				errstr = "multiple \"from\" clauses";
				goto fail;
			}
			ret->required_from_host_keys = FUNC4(&opts,
			    &errstr);
			if (ret->required_from_host_keys == NULL)
				goto fail;
		} else if (FUNC6(&opts, "expiry-time")) {
			if ((opt = FUNC4(&opts, &errstr)) == NULL)
				goto fail;
			if (FUNC7(opt, &valid_before) != 0 ||
			    valid_before == 0) {
				FUNC1(opt);
				errstr = "invalid expires time";
				goto fail;
			}
			FUNC1(opt);
			if (ret->valid_before == 0 ||
			    valid_before < ret->valid_before)
				ret->valid_before = valid_before;
		} else if (FUNC6(&opts, "environment")) {
			if (ret->nenv > INT_MAX) {
				errstr = "too many environment strings";
				goto fail;
			}
			if ((opt = FUNC4(&opts, &errstr)) == NULL)
				goto fail;
			/* env name must be alphanumeric and followed by '=' */
			if ((tmp = FUNC11(opt, '=')) == NULL) {
				FUNC1(opt);
				errstr = "invalid environment string";
				goto fail;
			}
			for (cp = opt; cp < tmp; cp++) {
				if (!FUNC3((u_char)*cp) && *cp != '_') {
					FUNC1(opt);
					errstr = "invalid environment string";
					goto fail;
				}
			}
			/* Append it. */
			oarray = ret->env;
			if ((ret->env = FUNC8(ret->env, ret->nenv,
			    ret->nenv + 1, sizeof(*ret->env))) == NULL) {
				FUNC1(opt);
				ret->env = oarray; /* put it back for cleanup */
				goto alloc_fail;
			}
			ret->env[ret->nenv++] = opt;
		} else if (FUNC6(&opts, "permitopen")) {
			if (FUNC2(&opts, 0, &ret->permitopen,
			    &ret->npermitopen, &errstr) != 0)
				goto fail;
		} else if (FUNC6(&opts, "permitlisten")) {
			if (FUNC2(&opts, 1, &ret->permitlisten,
			    &ret->npermitlisten, &errstr) != 0)
				goto fail;
		} else if (FUNC6(&opts, "tunnel")) {
			if ((opt = FUNC4(&opts, &errstr)) == NULL)
				goto fail;
			ret->force_tun_device = FUNC0(opt, NULL);
			FUNC1(opt);
			if (ret->force_tun_device == SSH_TUNID_ERR) {
				errstr = "invalid tun device";
				goto fail;
			}
		}
		/*
		 * Skip the comma, and move to the next option
		 * (or break out if there are no more).
		 */
		if (*opts == '\0' || *opts == ' ' || *opts == '\t')
			break;		/* End of options. */
		/* Anything other than a comma is an unknown option */
		if (*opts != ',') {
			errstr = "unknown key option";
			goto fail;
		}
		opts++;
		if (*opts == '\0') {
			errstr = "unexpected end-of-options";
			goto fail;
		}
	}

	/* success */
	if (errstrp != NULL)
		*errstrp = NULL;
	return ret;

alloc_fail:
	errstr = "memory allocation failed";
fail:
	FUNC9(ret);
	if (errstrp != NULL)
		*errstrp = errstr;
	return NULL;
}