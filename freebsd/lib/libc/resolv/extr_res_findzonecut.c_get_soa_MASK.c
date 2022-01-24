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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  rrset_ns ;
typedef  int /*<<< orphan*/  res_state ;
typedef  int ns_sect ;
typedef  int /*<<< orphan*/  ns_rr ;
typedef  int /*<<< orphan*/  ns_msg ;
typedef  scalar_t__ ns_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EDESTADDRREQ ; 
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  EPROTOTYPE ; 
 int NS_MAXDNAME ; 
 int /*<<< orphan*/  NS_MAXMSG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_f_rcode ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char*,size_t) ; 
 int /*<<< orphan*/  ns_o_query ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ ns_r_noerror ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
#define  ns_s_an 129 
 int ns_s_max ; 
#define  ns_s_ns 128 
 int /*<<< orphan*/  FUNC15 (char const*,char const*) ; 
 int FUNC16 (char const*,char const*) ; 
 scalar_t__ ns_t_cname ; 
 scalar_t__ ns_t_dname ; 
 scalar_t__ ns_t_soa ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*) ; 
 int FUNC21 (char const*) ; 

__attribute__((used)) static int
FUNC22(res_state statp, const char *dname, ns_class class, int opts,
	char *zname, size_t zsize, char *mname, size_t msize,
	rrset_ns *nsrrsp)
{
	char tname[NS_MAXDNAME];
	u_char *resp = NULL;
	int n, i, ancount, nscount;
	ns_sect sect;
	ns_msg msg;
	u_int rcode;

	/*
	 * Find closest enclosing SOA, even if it's for the root zone.
	 */

	/* First canonicalize dname (exactly one unescaped trailing "."). */
	if (FUNC5(dname, tname, sizeof tname) < 0)
		goto cleanup;
	dname = tname;

	resp = FUNC4(NS_MAXMSG);
	if (resp == NULL)
		goto cleanup;

	/* Now grovel the subdomains, hunting for an SOA answer or auth. */
	for (;;) {
		/* Leading or inter-label '.' are skipped here. */
		while (*dname == '.')
			dname++;

		/* Is there an SOA? */
		n = FUNC2(statp, dname, class, ns_t_soa, resp, &msg);
		if (n < 0) {
			FUNC0(("get_soa: do_query('%s', %s) failed (%d)",
				 dname, FUNC17(class), n));
			goto cleanup;
		}
		if (n > 0) {
			FUNC0(("get_soa: CNAME or DNAME found"));
			sect = ns_s_max, n = 0;
		} else {
			rcode = FUNC8(msg, ns_f_rcode);
			ancount = FUNC6(msg, ns_s_an);
			nscount = FUNC6(msg, ns_s_ns);
			if (ancount > 0 && rcode == ns_r_noerror)
				sect = ns_s_an, n = ancount;
			else if (nscount > 0)
				sect = ns_s_ns, n = nscount;
			else
				sect = ns_s_max, n = 0;
		}
		for (i = 0; i < n; i++) {
			const char *t;
			const u_char *rdata;
			ns_rr rr;

			if (FUNC10(&msg, sect, i, &rr) < 0) {
				FUNC0(("get_soa: ns_parserr(%s, %d) failed",
					 FUNC18(sect, ns_o_query), i));
				goto cleanup;
			}
			if (FUNC14(rr) == ns_t_cname ||
			    FUNC14(rr) == ns_t_dname)
				break;
			if (FUNC14(rr) != ns_t_soa ||
			    FUNC11(rr) != class)
				continue;
			t = FUNC12(rr);
			switch (sect) {
			case ns_s_an:
				if (FUNC15(dname, t) == 0) {
					FUNC0(
				    ("get_soa: ns_samedomain('%s', '%s') == 0",
						dname, t)
						);
					errno = EPROTOTYPE;
					goto cleanup;
				}
				break;
			case ns_s_ns:
				if (FUNC16(dname, t) == 1 ||
				    FUNC15(dname, t) == 0) {
					FUNC0(
		       ("get_soa: ns_samename() || !ns_samedomain('%s', '%s')",
						dname, t)
						);
					errno = EPROTOTYPE;
					goto cleanup;
				}
				break;
			default:
				FUNC1();
			}
			if (FUNC21(t) + 1 > zsize) {
				FUNC0(("get_soa: zname(%lu) too small (%lu)",
					 (unsigned long)zsize,
					 (unsigned long)FUNC21(t) + 1));
				errno = EMSGSIZE;
				goto cleanup;
			}
			FUNC20(zname, t);
			rdata = FUNC13(rr);
			if (FUNC9(resp, FUNC7(msg), rdata,
					       mname, msize) < 0) {
				FUNC0(("get_soa: ns_name_uncompress failed")
					);
				goto cleanup;
			}
			if (FUNC19(statp, &msg, ns_s_ns,
				    zname, class, opts, nsrrsp) < 0) {
				FUNC0(("get_soa: save_ns failed"));
				goto cleanup;
			}
			FUNC3(resp);
			return (0);
		}

		/* If we're out of labels, then not even "." has an SOA! */
		if (*dname == '\0')
			break;

		/* Find label-terminating "."; top of loop will skip it. */
		while (*dname != '.') {
			if (*dname == '\\')
				if (*++dname == '\0') {
					errno = EMSGSIZE;
					goto cleanup;
				}
			dname++;
		}
	}
	FUNC0(("get_soa: out of labels"));
	errno = EDESTADDRREQ;
 cleanup:
	if (resp != NULL)
		FUNC3(resp);
	return (-1);
}