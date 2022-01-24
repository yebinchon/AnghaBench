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
struct ip_list {int dummy; } ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509 ; 
 int /*<<< orphan*/  X509_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int cert ; 
 int /*<<< orphan*/  do_wsa_cleanup ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct ip_list*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_list*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (char const*) ; 
 struct ip_list* FUNC10 (char const*,int,char const*,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ verb ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const*) ; 
 char* FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(const char* root_anchor_file, const char* root_cert_file,
	const char* urlname, const char* xmlname, const char* p7sname,
	const char* p7signer, const char* res_conf, const char* root_hints,
	const char* debugconf, int ip4only, int ip6only, int port)
{
	FUNC2(X509)* cert;
	BIO *xml, *p7s;
	struct ip_list* ip_list = NULL;

	/* read pem file or provide builtin */
	cert = FUNC9(root_cert_file);

	/* lookup A, AAAA for the urlname (or parse urlname if IP address) */
	ip_list = FUNC10(urlname, port, res_conf, root_hints, debugconf,
		ip4only, ip6only);

#ifdef USE_WINSOCK
	if(1) { /* libunbound finished, startup WSA for the https connection */
		WSADATA wsa_data;
		int r;
		if((r = WSAStartup(MAKEWORD(2,2), &wsa_data)) != 0) {
			if(verb) printf("WSAStartup failed: %s\n",
				wsa_strerror(r));
			exit(0);
		}
		atexit(&do_wsa_cleanup);
	}
#endif

	/* fetch the necessary files over HTTPS */
	xml = FUNC6(ip_list, xmlname, urlname);
	p7s = FUNC6(ip_list, p7sname, urlname);

	/* verify and update the root anchor */
	FUNC12(root_anchor_file, xml, p7s, cert, p7signer);
	if(verb) FUNC8("success: the anchor has been updated "
			"using the cert\n");

	FUNC0(xml);
	FUNC0(p7s);
#ifndef S_SPLINT_S
	FUNC11(cert, X509_free);
#endif
	FUNC7(ip_list);
	return 1;
}